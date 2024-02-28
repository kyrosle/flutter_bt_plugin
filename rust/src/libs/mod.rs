pub mod app;
pub mod unit;
use std::{
  net::SocketAddr,
  path::PathBuf,
  sync::{Arc, RwLock, RwLockReadGuard},
};

use bt_rust::prelude::*;
use flexi_logger::FileSpec;
use flutter_rust_bridge::DartFnFuture;

use self::app::{App, Torrent};

// pub type Result<T> = std::result::Result<T, Box<dyn std::error::Error>>;
use anyhow::Result;

#[derive(Debug)]
pub struct DownloadArgs {
  /// Whether to 'seed' or 'download' the torrent.
  pub mode: Mode,

  /// The path of the folder where to download file.
  pub download_dir: PathBuf,

  /// The path to the torrent metainfo file.
  pub metainfo: PathBuf,

  /// A comma separated list of <ip>:<port> pairs of the seeds.
  pub seeds: Option<Vec<SocketAddr>>,

  /// The socket address on which to listen for new connections.
  pub listen: Option<SocketAddr>,

  pub quit_after_complete: bool,
}

pub async fn start_up(mut args: DownloadArgs) -> Result<()> {
  flexi_logger::Logger::try_with_str("info")?
    // .log_to_stdout()
    .log_to_file(FileSpec::default().directory("./log"))
    .start()?;

  // parse cli args
  if let Mode::Download { seeds } = &mut args.mode {
    *seeds = args.seeds.clone().unwrap_or_default();
  }

  let quit_after_complete = args.quit_after_complete;

  // set up app state and input events
  let mut app = App::new(args.download_dir.clone())?;

  // for now we only support creation of a single torrent, but
  // technically everything is in place to allow running multiple
  // torrents at the same time.
  app.create_torrent(args)?;

  // wait for stdin input and alerts form the engine.
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

    // we want to draw once more before breaking out of the loop as
    // otherwise the completion of the ui is not rendered, which will result
    // in a screen as though the app froze
    if !run {
      break;
    }
  }

  app.engine.shutdown().await.unwrap();

  Ok(())
}
