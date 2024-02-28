use crate::libs::{app::Torrent, DownloadArgs, Result};

pub async fn start_up(
  download_args: DownloadArgs,
  tick_callback: Box<dyn Fn(&Torrent)>,
) -> Result<()> {
  crate::libs::start_up(download_args, tick_callback).await
}
