#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
// EXTRA BEGIN
typedef struct DartCObject *WireSyncRust2DartDco;
typedef struct WireSyncRust2DartSse {
  uint8_t *ptr;
  int32_t len;
} WireSyncRust2DartSse;

typedef int64_t DartPort;
typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);
void store_dart_post_cobject(DartPostCObjectFnType ptr);
// EXTRA END
typedef struct _Dart_Handle* Dart_Handle;

typedef struct wire_cst_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr {
  uintptr_t *ptr;
  int32_t len;
} wire_cst_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr;

typedef struct wire_cst_Mode_Download {
  struct wire_cst_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr *seeds;
} wire_cst_Mode_Download;

typedef union ModeKind {
  struct wire_cst_Mode_Download Download;
} ModeKind;

typedef struct wire_cst_mode {
  int32_t tag;
  union ModeKind kind;
} wire_cst_mode;

typedef struct wire_cst_download_args {
  struct wire_cst_mode mode;
  uintptr_t download_dir;
  uintptr_t metainfo;
  struct wire_cst_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr *seeds;
  uintptr_t *listen;
  bool quit_after_complete;
} wire_cst_download_args;

typedef struct wire_cst_file_info {
  uintptr_t path;
  uint64_t len;
  uint64_t torrent_offset;
} wire_cst_file_info;

typedef struct wire_cst_list_file_info {
  struct wire_cst_file_info *ptr;
  int32_t len;
} wire_cst_list_file_info;

typedef struct wire_cst_file_stats {
  struct wire_cst_file_info info;
  uint64_t complete;
} wire_cst_file_stats;

typedef struct wire_cst_list_file_stats {
  struct wire_cst_file_stats *ptr;
  int32_t len;
} wire_cst_list_file_stats;

typedef struct wire_cst_list_prim_u_8_strict {
  uint8_t *ptr;
  int32_t len;
} wire_cst_list_prim_u_8_strict;

typedef struct wire_cst_session_state {
  int32_t connection;
  bool is_choked;
  bool is_interested;
  bool is_peer_choked;
  bool is_peer_interested;
} wire_cst_session_state;

typedef struct wire_cst_thruput {
  uint64_t total;
  uint64_t rate;
  uint64_t peak;
} wire_cst_thruput;

typedef struct wire_cst_channel {
  struct wire_cst_thruput down;
  struct wire_cst_thruput up;
} wire_cst_channel;

typedef struct wire_cst_thruput_stats {
  struct wire_cst_channel protocol;
  struct wire_cst_channel payload;
  uint64_t waste;
} wire_cst_thruput_stats;

typedef struct wire_cst_peer_session_stats {
  uintptr_t addr;
  struct wire_cst_list_prim_u_8_strict *id;
  struct wire_cst_session_state state;
  uint64_t piece_count;
  struct wire_cst_thruput_stats thruput;
} wire_cst_peer_session_stats;

typedef struct wire_cst_list_peer_session_stats {
  struct wire_cst_peer_session_stats *ptr;
  int32_t len;
} wire_cst_list_peer_session_stats;

typedef struct wire_cst_list_prim_u_64_strict {
  uint64_t *ptr;
  int32_t len;
} wire_cst_list_prim_u_64_strict;

typedef struct wire_cst_thruput_history {
  uint64_t peak;
  uint64_t total;
  struct wire_cst_list_prim_u_64_strict *rates;
} wire_cst_thruput_history;

typedef struct wire_cst_channel_history {
  struct wire_cst_thruput_history down;
  struct wire_cst_thruput_history up;
} wire_cst_channel_history;

typedef struct wire_cst_Peers_Count {
  uint64_t field0;
} wire_cst_Peers_Count;

typedef struct wire_cst_Peers_Full {
  struct wire_cst_list_peer_session_stats *field0;
} wire_cst_Peers_Full;

typedef union PeersKind {
  struct wire_cst_Peers_Count Count;
  struct wire_cst_Peers_Full Full;
} PeersKind;

typedef struct wire_cst_peers {
  int32_t tag;
  union PeersKind kind;
} wire_cst_peers;

typedef struct wire_cst_piece_stats {
  uint64_t total;
  uint64_t pending;
  uint64_t complete;
  struct wire_cst_list_prim_u_64_strict *latest_completed;
} wire_cst_piece_stats;

typedef struct wire_cst_storage_info {
  uint64_t piece_count;
  uint32_t piece_len;
  uint32_t last_piece_len;
  uint64_t download_len;
  uintptr_t download_dir;
  struct wire_cst_list_file_info *files;
} wire_cst_storage_info;

typedef struct wire_cst_torrent {
  struct wire_cst_list_prim_u_8_strict *name;
  struct wire_cst_list_prim_u_8_strict *info_hash;
  uint32_t piece_len;
  uint64_t download_len;
  struct wire_cst_storage_info storage;
  int64_t run_duration;
  struct wire_cst_piece_stats pieces;
  struct wire_cst_peers peers;
  struct wire_cst_list_file_stats *files;
  struct wire_cst_channel_history protocol;
  struct wire_cst_channel_history payload;
  uint64_t wasted_payload_count;
} wire_cst_torrent;

void frbgen_flutter_bt_plugin_wire_bt_close_event_listener(int64_t port_);

void frbgen_flutter_bt_plugin_wire_bt_init_app(int64_t port_, uintptr_t download_path);

void frbgen_flutter_bt_plugin_wire_bt_register_event_listener(int64_t port_);

void frbgen_flutter_bt_plugin_wire_bt_start_up(int64_t port_, struct wire_cst_download_args *args);

void frbgen_flutter_bt_plugin_wire_init_app(int64_t port_);

WireSyncRust2DartDco frbgen_flutter_bt_plugin_wire_sum(uintptr_t a, uintptr_t b);

void frbgen_flutter_bt_plugin_wire_sum_long_running(int64_t port_, uintptr_t a, uintptr_t b);

void frbgen_flutter_bt_plugin_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(const void *ptr);

void frbgen_flutter_bt_plugin_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(const void *ptr);

void frbgen_flutter_bt_plugin_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(const void *ptr);

void frbgen_flutter_bt_plugin_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(const void *ptr);

void frbgen_flutter_bt_plugin_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(const void *ptr);

void frbgen_flutter_bt_plugin_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(const void *ptr);

uintptr_t *frbgen_flutter_bt_plugin_cst_new_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(void);

struct wire_cst_download_args *frbgen_flutter_bt_plugin_cst_new_box_autoadd_download_args(void);

struct wire_cst_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr *frbgen_flutter_bt_plugin_cst_new_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(int32_t len);

struct wire_cst_list_file_info *frbgen_flutter_bt_plugin_cst_new_list_file_info(int32_t len);

struct wire_cst_list_file_stats *frbgen_flutter_bt_plugin_cst_new_list_file_stats(int32_t len);

struct wire_cst_list_peer_session_stats *frbgen_flutter_bt_plugin_cst_new_list_peer_session_stats(int32_t len);

struct wire_cst_list_prim_u_64_strict *frbgen_flutter_bt_plugin_cst_new_list_prim_u_64_strict(int32_t len);

struct wire_cst_list_prim_u_8_strict *frbgen_flutter_bt_plugin_cst_new_list_prim_u_8_strict(int32_t len);
static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_box_autoadd_download_args);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_list_file_info);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_list_file_stats);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_list_peer_session_stats);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_list_prim_u_64_strict);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_cst_new_list_prim_u_8_strict);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_bt_close_event_listener);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_bt_init_app);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_bt_register_event_listener);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_bt_start_up);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_init_app);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_sum);
    dummy_var ^= ((int64_t) (void*) frbgen_flutter_bt_plugin_wire_sum_long_running);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}
