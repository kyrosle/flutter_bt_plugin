use std::{thread, time::Duration};

#[flutter_rust_bridge::frb(sync)]
pub fn sum(a: usize, b: usize) -> usize {
  a + b
}

pub async  fn sum_long_running(a: usize, b: usize) -> usize {
  thread::sleep(Duration::from_secs(5));
  a + b
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}
