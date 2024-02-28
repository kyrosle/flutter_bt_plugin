pub use anyhow::anyhow;
use bt_rust::alert::Alert;
pub use bt_rust::engine::Mode;
pub use bt_rust::peer::session::{ConnectionState, SessionState};
pub use bt_rust::storage_info::{FileInfo, StorageInfo};
pub use bt_rust::torrent::stats::{
  Channel, PeerSessionStats, Peers, PieceStats, Thruput, ThruputStats,
};
use flutter_rust_bridge::frb;
use once_cell::sync::{Lazy, OnceCell};
pub use std::net::SocketAddr;
pub use std::path::PathBuf;
use std::str::FromStr;
use std::sync::{Mutex, RwLock};
pub use std::time::Duration;

use crate::frb_generated::StreamSink;
use crate::libs::app::FileStats;
use crate::libs::app::{App, ChannelHistory};

pub use crate::libs::{app::Torrent, DownloadArgs};
use anyhow::Result;

#[frb(mirror(Mode))]
pub enum _Mode {
  Download { seeds: Vec<SocketAddr> },
  Seed,
}
#[frb(mirror(Torrent))]
pub struct _Torrent {
  pub name: String,
  pub info_hash: String,
  pub piece_len: u32,
  pub download_len: u64,
  pub storage: StorageInfo,
  pub run_duration: Duration,
  pub pieces: PieceStats,
  pub peers: Peers,
  pub files: Vec<FileStats>,
  pub protocol: ChannelHistory,
  pub payload: ChannelHistory,
  pub wasted_payload_count: u64,
}
#[frb(mirror(Peers))]
pub enum _Peers {
  Count(usize),
  Full(Vec<PeerSessionStats>),
}
#[frb(mirror(PeerSessionStats))]
pub struct _PeerSessionStats {
  pub addr: SocketAddr,
  pub id: Option<PeerId>,
  pub state: SessionState,
  pub piece_count: usize,
  pub thruput: ThruputStats,
}
pub type PeerId = [u8; 20];
#[frb(mirror(SessionState))]
pub struct _SessionState {
  pub connection: ConnectionState,
  pub is_choked: bool,
  pub is_interested: bool,
  pub is_peer_choked: bool,
  pub is_peer_interested: bool,
}
#[frb(mirror(ConnectionState))]
pub enum _ConnectionState {
  Disconnected,
  Connecting,
  Handshaking,
  AvailabilityExchange,
  Connected,
}
#[frb(mirror(ThruputStats))]
pub struct _ThruputStats {
  pub protocol: Channel,
  pub payload: Channel,
  pub waste: u64,
}
#[frb(mirror(Channel))]
pub struct _Channel {
  pub down: Thruput,
  pub up: Thruput,
}
#[frb(mirror(Thruput))]
pub struct _Thruput {
  pub total: u64,
  pub rate: u64,
  pub peak: u64,
}
#[frb(mirror(StorageInfo))]
pub struct _StorageInfo {
  pub piece_count: usize,
  pub piece_len: u32,
  pub last_piece_len: u32,
  pub download_len: u64,
  pub download_dir: PathBuf,
  pub files: Vec<FileInfo>,
}
#[frb(mirror(FileInfo))]
pub struct _FileInfo {
  pub path: PathBuf,
  pub len: u64,
  pub torrent_offset: u64,
}
#[frb(mirror(PieceStats))]
pub struct _PieceStats {
  pub total: usize,
  pub pending: usize,
  pub complete: usize,
  pub latest_completed: Option<Vec<PieceIndex>>,
}
pub(crate) type PieceIndex = usize;

// -------------- api -------------

static INSTANCE: OnceCell<RwLock<App>> = OnceCell::new();
static EVENTS: Lazy<Mutex<Option<StreamSink<Torrent>>>> =
  Lazy::new(|| Default::default());

pub fn bt_init_app(download_path: &str) -> Result<()> {
  INSTANCE.get_or_try_init(|| {
    let app = App::new(PathBuf::from_str(download_path)?)?;
    Ok::<std::sync::RwLock<crate::libs::app::App>, anyhow::Error>(RwLock::new(
      app,
    ))
  })?;
  Ok(())
}

/// for now we only support creation of a single torrent, but
/// technically everything is in place to allow running multiple
/// torrents at the same time.
pub async fn bt_start_up(args: DownloadArgs) -> Result<()> {
  let quit_after_complete = args.quit_after_complete;
  {
    INSTANCE
      .get()
      .unwrap()
      .write()
      .unwrap()
      .create_torrent(args)?;
  }
  let mut app = INSTANCE.get().unwrap().write().unwrap();
  let mut run = true;
  while run {
    tokio::select! {
        Some(alert) = app.alert_rx.recv() => {
            match alert {
                Alert::TorrentStats { id, stats } => {
                    app.update_torrent_state(id, *stats);
                }
                Alert::TorrentComplete(_) => {
                    if quit_after_complete {
                        run = false;
                    }
                }
                // TODO: should handle error
                _ => (),
            }
        }
    }

    match EVENTS.lock() {
      Ok(mut events) => match events.clone() {
        Some(sink) => sink.add(app.torrents.values().next().cloned().unwrap()),
        None => continue,
      },
      Err(_) => continue,
    };

    // we want to draw once more before breaking out of the loop as
    // otherwise the completion of the ui is not rendered, which will result
    // in a screen as though the app froze
    if !run {
      break;
    }
  }
  Ok(())
}

pub fn bt_register_event_listener(listener: StreamSink<Torrent>) -> Result<()> {
  match EVENTS.lock() {
    Ok(mut events) => {
      *events = Some(listener);
      Ok(())
    }
    Err(err) => Err(anyhow!("Could not register event listener: {}", err)),
  }
}

pub fn bt_close_event_listener() {
  let _ = EVENTS.lock().map(|mut guard| guard.take());
}
