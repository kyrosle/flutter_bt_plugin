// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.25.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../libs.dart';
import '../libs/app.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'bt_api.freezed.dart';

Future<void> btInitApp({required Str downloadPath, dynamic hint}) =>
    RustLib.instance.api.btInitApp(downloadPath: downloadPath, hint: hint);

/// for now we only support creation of a single torrent, but
/// technically everything is in place to allow running multiple
/// torrents at the same time.
Future<void> btStartUp({required DownloadArgs args, dynamic hint}) =>
    RustLib.instance.api.btStartUp(args: args, hint: hint);

Stream<Torrent> btRegisterEventListener({dynamic hint}) =>
    RustLib.instance.api.btRegisterEventListener(hint: hint);

Future<void> btCloseEventListener({dynamic hint}) =>
    RustLib.instance.api.btCloseEventListener(hint: hint);

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::rust_async::RwLock<PathBuf>>
@sealed
class PathBuf extends RustOpaque {
  PathBuf.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  PathBuf.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_PathBuf,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_PathBuf,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_PathBufPtr,
  );
}

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::rust_async::RwLock<SocketAddr>>
@sealed
class SocketAddr extends RustOpaque {
  SocketAddr.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  SocketAddr.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_SocketAddr,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_SocketAddr,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_SocketAddrPtr,
  );
}

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::rust_async::RwLock<str>>
@sealed
class Str extends RustOpaque {
  Str.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  Str.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_Str,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_Str,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_StrPtr,
  );
}

class Channel {
  final Thruput down;
  final Thruput up;

  const Channel({
    required this.down,
    required this.up,
  });

  @override
  int get hashCode => down.hashCode ^ up.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Channel &&
          runtimeType == other.runtimeType &&
          down == other.down &&
          up == other.up;
}

enum ConnectionState {
  disconnected,
  connecting,
  handshaking,
  availabilityExchange,
  connected,
}

class FileInfo {
  final PathBuf path;
  final int len;
  final int torrentOffset;

  const FileInfo({
    required this.path,
    required this.len,
    required this.torrentOffset,
  });

  @override
  int get hashCode => path.hashCode ^ len.hashCode ^ torrentOffset.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileInfo &&
          runtimeType == other.runtimeType &&
          path == other.path &&
          len == other.len &&
          torrentOffset == other.torrentOffset;
}

@freezed
sealed class Mode with _$Mode {
  const factory Mode.download({
    required List<SocketAddr> seeds,
  }) = Mode_Download;
  const factory Mode.seed() = Mode_Seed;
}

class PeerSessionStats {
  final SocketAddr addr;
  final U8Array20? id;
  final SessionState state;
  final int pieceCount;
  final ThruputStats thruput;

  const PeerSessionStats({
    required this.addr,
    this.id,
    required this.state,
    required this.pieceCount,
    required this.thruput,
  });

  @override
  int get hashCode =>
      addr.hashCode ^
      id.hashCode ^
      state.hashCode ^
      pieceCount.hashCode ^
      thruput.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeerSessionStats &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          id == other.id &&
          state == other.state &&
          pieceCount == other.pieceCount &&
          thruput == other.thruput;
}

@freezed
sealed class Peers with _$Peers {
  const factory Peers.count(
    int field0,
  ) = Peers_Count;
  const factory Peers.full(
    List<PeerSessionStats> field0,
  ) = Peers_Full;
}

class PieceStats {
  final int total;
  final int pending;
  final int complete;
  final Uint64List? latestCompleted;

  const PieceStats({
    required this.total,
    required this.pending,
    required this.complete,
    this.latestCompleted,
  });

  @override
  int get hashCode =>
      total.hashCode ^
      pending.hashCode ^
      complete.hashCode ^
      latestCompleted.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PieceStats &&
          runtimeType == other.runtimeType &&
          total == other.total &&
          pending == other.pending &&
          complete == other.complete &&
          latestCompleted == other.latestCompleted;
}

class SessionState {
  final ConnectionState connection;
  final bool isChoked;
  final bool isInterested;
  final bool isPeerChoked;
  final bool isPeerInterested;

  const SessionState({
    required this.connection,
    required this.isChoked,
    required this.isInterested,
    required this.isPeerChoked,
    required this.isPeerInterested,
  });

  @override
  int get hashCode =>
      connection.hashCode ^
      isChoked.hashCode ^
      isInterested.hashCode ^
      isPeerChoked.hashCode ^
      isPeerInterested.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionState &&
          runtimeType == other.runtimeType &&
          connection == other.connection &&
          isChoked == other.isChoked &&
          isInterested == other.isInterested &&
          isPeerChoked == other.isPeerChoked &&
          isPeerInterested == other.isPeerInterested;
}

class StorageInfo {
  final int pieceCount;
  final int pieceLen;
  final int lastPieceLen;
  final int downloadLen;
  final PathBuf downloadDir;
  final List<FileInfo> files;

  const StorageInfo({
    required this.pieceCount,
    required this.pieceLen,
    required this.lastPieceLen,
    required this.downloadLen,
    required this.downloadDir,
    required this.files,
  });

  @override
  int get hashCode =>
      pieceCount.hashCode ^
      pieceLen.hashCode ^
      lastPieceLen.hashCode ^
      downloadLen.hashCode ^
      downloadDir.hashCode ^
      files.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StorageInfo &&
          runtimeType == other.runtimeType &&
          pieceCount == other.pieceCount &&
          pieceLen == other.pieceLen &&
          lastPieceLen == other.lastPieceLen &&
          downloadLen == other.downloadLen &&
          downloadDir == other.downloadDir &&
          files == other.files;
}

class Thruput {
  final int total;
  final int rate;
  final int peak;

  const Thruput({
    required this.total,
    required this.rate,
    required this.peak,
  });

  @override
  int get hashCode => total.hashCode ^ rate.hashCode ^ peak.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Thruput &&
          runtimeType == other.runtimeType &&
          total == other.total &&
          rate == other.rate &&
          peak == other.peak;
}

class ThruputStats {
  final Channel protocol;
  final Channel payload;
  final int waste;

  const ThruputStats({
    required this.protocol,
    required this.payload,
    required this.waste,
  });

  @override
  int get hashCode => protocol.hashCode ^ payload.hashCode ^ waste.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThruputStats &&
          runtimeType == other.runtimeType &&
          protocol == other.protocol &&
          payload == other.payload &&
          waste == other.waste;
}

class U8Array20 extends NonGrowableListView<int> {
  static const arraySize = 20;

  @internal
  Uint8List get inner => _inner;
  final Uint8List _inner;

  U8Array20(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  U8Array20.init() : this(Uint8List(arraySize));
}