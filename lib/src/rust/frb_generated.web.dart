// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.25.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/bt_api.dart';
import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'libs.dart';
import 'libs/app.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_PathBufPtr => wire
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_SocketAddrPtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_StrPtr => wire
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  PathBuf
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          dynamic raw);

  @protected
  SocketAddr
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic raw);

  @protected
  Str dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
      dynamic raw);

  @protected
  Duration dco_decode_Chrono_Duration(dynamic raw);

  @protected
  PathBuf
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          dynamic raw);

  @protected
  SocketAddr
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic raw);

  @protected
  Str dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
      dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  SocketAddr
      dco_decode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic raw);

  @protected
  DownloadArgs dco_decode_box_autoadd_download_args(dynamic raw);

  @protected
  Channel dco_decode_channel(dynamic raw);

  @protected
  ChannelHistory dco_decode_channel_history(dynamic raw);

  @protected
  ConnectionState dco_decode_connection_state(dynamic raw);

  @protected
  DownloadArgs dco_decode_download_args(dynamic raw);

  @protected
  FileInfo dco_decode_file_info(dynamic raw);

  @protected
  FileStats dco_decode_file_stats(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  int dco_decode_i_64(dynamic raw);

  @protected
  List<SocketAddr>
      dco_decode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic raw);

  @protected
  List<FileInfo> dco_decode_list_file_info(dynamic raw);

  @protected
  List<FileStats> dco_decode_list_file_stats(dynamic raw);

  @protected
  List<PeerSessionStats> dco_decode_list_peer_session_stats(dynamic raw);

  @protected
  Uint64List dco_decode_list_prim_u_64_strict(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  Mode dco_decode_mode(dynamic raw);

  @protected
  SocketAddr?
      dco_decode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic raw);

  @protected
  List<SocketAddr>?
      dco_decode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic raw);

  @protected
  Uint64List? dco_decode_opt_list_prim_u_64_strict(dynamic raw);

  @protected
  U8Array20? dco_decode_opt_u_8_array_20(dynamic raw);

  @protected
  PeerSessionStats dco_decode_peer_session_stats(dynamic raw);

  @protected
  Peers dco_decode_peers(dynamic raw);

  @protected
  PieceStats dco_decode_piece_stats(dynamic raw);

  @protected
  SessionState dco_decode_session_state(dynamic raw);

  @protected
  StorageInfo dco_decode_storage_info(dynamic raw);

  @protected
  Thruput dco_decode_thruput(dynamic raw);

  @protected
  ThruputHistory dco_decode_thruput_history(dynamic raw);

  @protected
  ThruputStats dco_decode_thruput_stats(dynamic raw);

  @protected
  Torrent dco_decode_torrent(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

  @protected
  int dco_decode_u_64(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  U8Array20 dco_decode_u_8_array_20(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  PathBuf
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          SseDeserializer deserializer);

  @protected
  SocketAddr
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SseDeserializer deserializer);

  @protected
  Str sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
      SseDeserializer deserializer);

  @protected
  Duration sse_decode_Chrono_Duration(SseDeserializer deserializer);

  @protected
  PathBuf
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          SseDeserializer deserializer);

  @protected
  SocketAddr
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SseDeserializer deserializer);

  @protected
  Str sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  SocketAddr
      sse_decode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SseDeserializer deserializer);

  @protected
  DownloadArgs sse_decode_box_autoadd_download_args(
      SseDeserializer deserializer);

  @protected
  Channel sse_decode_channel(SseDeserializer deserializer);

  @protected
  ChannelHistory sse_decode_channel_history(SseDeserializer deserializer);

  @protected
  ConnectionState sse_decode_connection_state(SseDeserializer deserializer);

  @protected
  DownloadArgs sse_decode_download_args(SseDeserializer deserializer);

  @protected
  FileInfo sse_decode_file_info(SseDeserializer deserializer);

  @protected
  FileStats sse_decode_file_stats(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  int sse_decode_i_64(SseDeserializer deserializer);

  @protected
  List<SocketAddr>
      sse_decode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SseDeserializer deserializer);

  @protected
  List<FileInfo> sse_decode_list_file_info(SseDeserializer deserializer);

  @protected
  List<FileStats> sse_decode_list_file_stats(SseDeserializer deserializer);

  @protected
  List<PeerSessionStats> sse_decode_list_peer_session_stats(
      SseDeserializer deserializer);

  @protected
  Uint64List sse_decode_list_prim_u_64_strict(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  Mode sse_decode_mode(SseDeserializer deserializer);

  @protected
  SocketAddr?
      sse_decode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SseDeserializer deserializer);

  @protected
  List<SocketAddr>?
      sse_decode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SseDeserializer deserializer);

  @protected
  Uint64List? sse_decode_opt_list_prim_u_64_strict(
      SseDeserializer deserializer);

  @protected
  U8Array20? sse_decode_opt_u_8_array_20(SseDeserializer deserializer);

  @protected
  PeerSessionStats sse_decode_peer_session_stats(SseDeserializer deserializer);

  @protected
  Peers sse_decode_peers(SseDeserializer deserializer);

  @protected
  PieceStats sse_decode_piece_stats(SseDeserializer deserializer);

  @protected
  SessionState sse_decode_session_state(SseDeserializer deserializer);

  @protected
  StorageInfo sse_decode_storage_info(SseDeserializer deserializer);

  @protected
  Thruput sse_decode_thruput(SseDeserializer deserializer);

  @protected
  ThruputHistory sse_decode_thruput_history(SseDeserializer deserializer);

  @protected
  ThruputStats sse_decode_thruput_stats(SseDeserializer deserializer);

  @protected
  Torrent sse_decode_torrent(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

  @protected
  int sse_decode_u_64(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  U8Array20 sse_decode_u_8_array_20(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_usize(SseDeserializer deserializer);

  @protected
  String cst_encode_AnyhowException(AnyhowException raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    throw UnimplementedError();
  }

  @protected
  Object cst_encode_Chrono_Duration(Duration raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_i_64(raw.inMilliseconds);
  }

  @protected
  String cst_encode_String(String raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  Object
      cst_encode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SocketAddr raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
        raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_download_args(DownloadArgs raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_download_args(raw);
  }

  @protected
  List<dynamic> cst_encode_channel(Channel raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [cst_encode_thruput(raw.down), cst_encode_thruput(raw.up)];
  }

  @protected
  List<dynamic> cst_encode_channel_history(ChannelHistory raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_thruput_history(raw.down),
      cst_encode_thruput_history(raw.up)
    ];
  }

  @protected
  List<dynamic> cst_encode_download_args(DownloadArgs raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_mode(raw.mode),
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          raw.downloadDir),
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          raw.metainfo),
      cst_encode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          raw.seeds),
      cst_encode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          raw.listen),
      cst_encode_bool(raw.quitAfterComplete)
    ];
  }

  @protected
  List<dynamic> cst_encode_file_info(FileInfo raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          raw.path),
      cst_encode_u_64(raw.len),
      cst_encode_u_64(raw.torrentOffset)
    ];
  }

  @protected
  List<dynamic> cst_encode_file_stats(FileStats raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [cst_encode_file_info(raw.info), cst_encode_u_64(raw.complete)];
  }

  @protected
  Object cst_encode_i_64(int raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return castNativeBigInt(raw);
  }

  @protected
  List<dynamic>
      cst_encode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          List<SocketAddr> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw
        .map(
            cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr)
        .toList();
  }

  @protected
  List<dynamic> cst_encode_list_file_info(List<FileInfo> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw.map(cst_encode_file_info).toList();
  }

  @protected
  List<dynamic> cst_encode_list_file_stats(List<FileStats> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw.map(cst_encode_file_stats).toList();
  }

  @protected
  List<dynamic> cst_encode_list_peer_session_stats(List<PeerSessionStats> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw.map(cst_encode_peer_session_stats).toList();
  }

  @protected
  Object /* BigInt64Array */ cst_encode_list_prim_u_64_strict(Uint64List raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw.inner;
  }

  @protected
  Uint8List cst_encode_list_prim_u_8_strict(Uint8List raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  List<dynamic> cst_encode_mode(Mode raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    if (raw is Mode_Download) {
      return [
        0,
        cst_encode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
            raw.seeds)
      ];
    }
    if (raw is Mode_Seed) {
      return [1];
    }

    throw Exception('unreachable');
  }

  @protected
  Object?
      cst_encode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SocketAddr? raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw == null
        ? null
        : cst_encode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
            raw);
  }

  @protected
  List<dynamic>?
      cst_encode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          List<SocketAddr>? raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw == null
        ? null
        : cst_encode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
            raw);
  }

  @protected
  Object /* BigInt64Array */ ? cst_encode_opt_list_prim_u_64_strict(
      Uint64List? raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw == null ? null : cst_encode_list_prim_u_64_strict(raw);
  }

  @protected
  Uint8List? cst_encode_opt_u_8_array_20(U8Array20? raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw == null ? null : cst_encode_u_8_array_20(raw);
  }

  @protected
  List<dynamic> cst_encode_peer_session_stats(PeerSessionStats raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          raw.addr),
      cst_encode_opt_u_8_array_20(raw.id),
      cst_encode_session_state(raw.state),
      cst_encode_u_64(raw.pieceCount),
      cst_encode_thruput_stats(raw.thruput)
    ];
  }

  @protected
  List<dynamic> cst_encode_peers(Peers raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    if (raw is Peers_Count) {
      return [0, cst_encode_u_64(raw.field0)];
    }
    if (raw is Peers_Full) {
      return [1, cst_encode_list_peer_session_stats(raw.field0)];
    }

    throw Exception('unreachable');
  }

  @protected
  List<dynamic> cst_encode_piece_stats(PieceStats raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_u_64(raw.total),
      cst_encode_u_64(raw.pending),
      cst_encode_u_64(raw.complete),
      cst_encode_opt_list_prim_u_64_strict(raw.latestCompleted)
    ];
  }

  @protected
  List<dynamic> cst_encode_session_state(SessionState raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_connection_state(raw.connection),
      cst_encode_bool(raw.isChoked),
      cst_encode_bool(raw.isInterested),
      cst_encode_bool(raw.isPeerChoked),
      cst_encode_bool(raw.isPeerInterested)
    ];
  }

  @protected
  List<dynamic> cst_encode_storage_info(StorageInfo raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_u_64(raw.pieceCount),
      cst_encode_u_32(raw.pieceLen),
      cst_encode_u_32(raw.lastPieceLen),
      cst_encode_u_64(raw.downloadLen),
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          raw.downloadDir),
      cst_encode_list_file_info(raw.files)
    ];
  }

  @protected
  List<dynamic> cst_encode_thruput(Thruput raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_u_64(raw.total),
      cst_encode_u_64(raw.rate),
      cst_encode_u_64(raw.peak)
    ];
  }

  @protected
  List<dynamic> cst_encode_thruput_history(ThruputHistory raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_u_64(raw.peak),
      cst_encode_u_64(raw.total),
      cst_encode_list_prim_u_64_strict(raw.rates)
    ];
  }

  @protected
  List<dynamic> cst_encode_thruput_stats(ThruputStats raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_channel(raw.protocol),
      cst_encode_channel(raw.payload),
      cst_encode_u_64(raw.waste)
    ];
  }

  @protected
  List<dynamic> cst_encode_torrent(Torrent raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_String(raw.name),
      cst_encode_String(raw.infoHash),
      cst_encode_u_32(raw.pieceLen),
      cst_encode_u_64(raw.downloadLen),
      cst_encode_storage_info(raw.storage),
      cst_encode_Chrono_Duration(raw.runDuration),
      cst_encode_piece_stats(raw.pieces),
      cst_encode_peers(raw.peers),
      cst_encode_list_file_stats(raw.files),
      cst_encode_channel_history(raw.protocol),
      cst_encode_channel_history(raw.payload),
      cst_encode_u_64(raw.wastedPayloadCount)
    ];
  }

  @protected
  Object cst_encode_u_64(int raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return castNativeBigInt(raw);
  }

  @protected
  Uint8List cst_encode_u_8_array_20(U8Array20 raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return Uint8List.fromList(raw);
  }

  @protected
  int cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
      PathBuf raw);

  @protected
  int cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
      SocketAddr raw);

  @protected
  int cst_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
      Str raw);

  @protected
  int cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
      PathBuf raw);

  @protected
  int cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
      SocketAddr raw);

  @protected
  int cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
      Str raw);

  @protected
  bool cst_encode_bool(bool raw);

  @protected
  int cst_encode_connection_state(ConnectionState raw);

  @protected
  int cst_encode_i_32(int raw);

  @protected
  int cst_encode_u_32(int raw);

  @protected
  int cst_encode_u_8(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  int cst_encode_usize(int raw);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          PathBuf self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SocketAddr self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
          Str self, SseSerializer serializer);

  @protected
  void sse_encode_Chrono_Duration(Duration self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          PathBuf self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SocketAddr self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
          Str self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void
      sse_encode_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SocketAddr self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_download_args(
      DownloadArgs self, SseSerializer serializer);

  @protected
  void sse_encode_channel(Channel self, SseSerializer serializer);

  @protected
  void sse_encode_channel_history(
      ChannelHistory self, SseSerializer serializer);

  @protected
  void sse_encode_connection_state(
      ConnectionState self, SseSerializer serializer);

  @protected
  void sse_encode_download_args(DownloadArgs self, SseSerializer serializer);

  @protected
  void sse_encode_file_info(FileInfo self, SseSerializer serializer);

  @protected
  void sse_encode_file_stats(FileStats self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(int self, SseSerializer serializer);

  @protected
  void
      sse_encode_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          List<SocketAddr> self, SseSerializer serializer);

  @protected
  void sse_encode_list_file_info(List<FileInfo> self, SseSerializer serializer);

  @protected
  void sse_encode_list_file_stats(
      List<FileStats> self, SseSerializer serializer);

  @protected
  void sse_encode_list_peer_session_stats(
      List<PeerSessionStats> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_64_strict(
      Uint64List self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_mode(Mode self, SseSerializer serializer);

  @protected
  void
      sse_encode_opt_box_autoadd_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          SocketAddr? self, SseSerializer serializer);

  @protected
  void
      sse_encode_opt_list_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          List<SocketAddr>? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_list_prim_u_64_strict(
      Uint64List? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_u_8_array_20(U8Array20? self, SseSerializer serializer);

  @protected
  void sse_encode_peer_session_stats(
      PeerSessionStats self, SseSerializer serializer);

  @protected
  void sse_encode_peers(Peers self, SseSerializer serializer);

  @protected
  void sse_encode_piece_stats(PieceStats self, SseSerializer serializer);

  @protected
  void sse_encode_session_state(SessionState self, SseSerializer serializer);

  @protected
  void sse_encode_storage_info(StorageInfo self, SseSerializer serializer);

  @protected
  void sse_encode_thruput(Thruput self, SseSerializer serializer);

  @protected
  void sse_encode_thruput_history(
      ThruputHistory self, SseSerializer serializer);

  @protected
  void sse_encode_thruput_stats(ThruputStats self, SseSerializer serializer);

  @protected
  void sse_encode_torrent(Torrent self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_8_array_20(U8Array20 self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(int self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void wire_bt_close_event_listener(NativePortType port_) =>
      wasmModule.wire_bt_close_event_listener(port_);

  void wire_bt_init_app(NativePortType port_, Object download_path) =>
      wasmModule.wire_bt_init_app(port_, download_path);

  void wire_bt_register_event_listener(NativePortType port_) =>
      wasmModule.wire_bt_register_event_listener(port_);

  void wire_bt_start_up(NativePortType port_, List<dynamic> args) =>
      wasmModule.wire_bt_start_up(port_, args);

  void wire_init_app(NativePortType port_) => wasmModule.wire_init_app(port_);

  dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_sum(int a, int b) => wasmModule.wire_sum(a, b);

  void wire_sum_long_running(NativePortType port_, int a, int b) =>
      wasmModule.wire_sum_long_running(port_, a, b);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
              ptr);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
              ptr);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
              ptr);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
class RustLibWasmModule implements WasmModule {
  @override
  external Object /* Promise */ call([String? moduleName]);

  @override
  external RustLibWasmModule bind(dynamic thisArg, String moduleName);

  external void wire_bt_close_event_listener(NativePortType port_);

  external void wire_bt_init_app(NativePortType port_, Object download_path);

  external void wire_bt_register_event_listener(NativePortType port_);

  external void wire_bt_start_up(NativePortType port_, List<dynamic> args);

  external void wire_init_app(NativePortType port_);

  external dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_sum(int a, int b);

  external void wire_sum_long_running(NativePortType port_, int a, int b);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockPathBuf(
          dynamic ptr);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSocketAddr(
          dynamic ptr);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockstr(
          dynamic ptr);
}
