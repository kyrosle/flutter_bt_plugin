// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bt_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Mode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SocketAddr> seeds) download,
    required TResult Function() seed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SocketAddr> seeds)? download,
    TResult? Function()? seed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SocketAddr> seeds)? download,
    TResult Function()? seed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mode_Download value) download,
    required TResult Function(Mode_Seed value) seed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Mode_Download value)? download,
    TResult? Function(Mode_Seed value)? seed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mode_Download value)? download,
    TResult Function(Mode_Seed value)? seed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeCopyWith<$Res> {
  factory $ModeCopyWith(Mode value, $Res Function(Mode) then) =
      _$ModeCopyWithImpl<$Res, Mode>;
}

/// @nodoc
class _$ModeCopyWithImpl<$Res, $Val extends Mode>
    implements $ModeCopyWith<$Res> {
  _$ModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$Mode_DownloadImplCopyWith<$Res> {
  factory _$$Mode_DownloadImplCopyWith(
          _$Mode_DownloadImpl value, $Res Function(_$Mode_DownloadImpl) then) =
      __$$Mode_DownloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SocketAddr> seeds});
}

/// @nodoc
class __$$Mode_DownloadImplCopyWithImpl<$Res>
    extends _$ModeCopyWithImpl<$Res, _$Mode_DownloadImpl>
    implements _$$Mode_DownloadImplCopyWith<$Res> {
  __$$Mode_DownloadImplCopyWithImpl(
      _$Mode_DownloadImpl _value, $Res Function(_$Mode_DownloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seeds = null,
  }) {
    return _then(_$Mode_DownloadImpl(
      seeds: null == seeds
          ? _value._seeds
          : seeds // ignore: cast_nullable_to_non_nullable
              as List<SocketAddr>,
    ));
  }
}

/// @nodoc

class _$Mode_DownloadImpl implements Mode_Download {
  const _$Mode_DownloadImpl({required final List<SocketAddr> seeds})
      : _seeds = seeds;

  final List<SocketAddr> _seeds;
  @override
  List<SocketAddr> get seeds {
    if (_seeds is EqualUnmodifiableListView) return _seeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seeds);
  }

  @override
  String toString() {
    return 'Mode.download(seeds: $seeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Mode_DownloadImpl &&
            const DeepCollectionEquality().equals(other._seeds, _seeds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_seeds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Mode_DownloadImplCopyWith<_$Mode_DownloadImpl> get copyWith =>
      __$$Mode_DownloadImplCopyWithImpl<_$Mode_DownloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SocketAddr> seeds) download,
    required TResult Function() seed,
  }) {
    return download(seeds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SocketAddr> seeds)? download,
    TResult? Function()? seed,
  }) {
    return download?.call(seeds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SocketAddr> seeds)? download,
    TResult Function()? seed,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(seeds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mode_Download value) download,
    required TResult Function(Mode_Seed value) seed,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Mode_Download value)? download,
    TResult? Function(Mode_Seed value)? seed,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mode_Download value)? download,
    TResult Function(Mode_Seed value)? seed,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class Mode_Download implements Mode {
  const factory Mode_Download({required final List<SocketAddr> seeds}) =
      _$Mode_DownloadImpl;

  List<SocketAddr> get seeds;
  @JsonKey(ignore: true)
  _$$Mode_DownloadImplCopyWith<_$Mode_DownloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Mode_SeedImplCopyWith<$Res> {
  factory _$$Mode_SeedImplCopyWith(
          _$Mode_SeedImpl value, $Res Function(_$Mode_SeedImpl) then) =
      __$$Mode_SeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Mode_SeedImplCopyWithImpl<$Res>
    extends _$ModeCopyWithImpl<$Res, _$Mode_SeedImpl>
    implements _$$Mode_SeedImplCopyWith<$Res> {
  __$$Mode_SeedImplCopyWithImpl(
      _$Mode_SeedImpl _value, $Res Function(_$Mode_SeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Mode_SeedImpl implements Mode_Seed {
  const _$Mode_SeedImpl();

  @override
  String toString() {
    return 'Mode.seed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Mode_SeedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SocketAddr> seeds) download,
    required TResult Function() seed,
  }) {
    return seed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SocketAddr> seeds)? download,
    TResult? Function()? seed,
  }) {
    return seed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SocketAddr> seeds)? download,
    TResult Function()? seed,
    required TResult orElse(),
  }) {
    if (seed != null) {
      return seed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mode_Download value) download,
    required TResult Function(Mode_Seed value) seed,
  }) {
    return seed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Mode_Download value)? download,
    TResult? Function(Mode_Seed value)? seed,
  }) {
    return seed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mode_Download value)? download,
    TResult Function(Mode_Seed value)? seed,
    required TResult orElse(),
  }) {
    if (seed != null) {
      return seed(this);
    }
    return orElse();
  }
}

abstract class Mode_Seed implements Mode {
  const factory Mode_Seed() = _$Mode_SeedImpl;
}

/// @nodoc
mixin _$Peers {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int field0) count,
    required TResult Function(List<PeerSessionStats> field0) full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int field0)? count,
    TResult? Function(List<PeerSessionStats> field0)? full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int field0)? count,
    TResult Function(List<PeerSessionStats> field0)? full,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Peers_Count value) count,
    required TResult Function(Peers_Full value) full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Peers_Count value)? count,
    TResult? Function(Peers_Full value)? full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Peers_Count value)? count,
    TResult Function(Peers_Full value)? full,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeersCopyWith<$Res> {
  factory $PeersCopyWith(Peers value, $Res Function(Peers) then) =
      _$PeersCopyWithImpl<$Res, Peers>;
}

/// @nodoc
class _$PeersCopyWithImpl<$Res, $Val extends Peers>
    implements $PeersCopyWith<$Res> {
  _$PeersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$Peers_CountImplCopyWith<$Res> {
  factory _$$Peers_CountImplCopyWith(
          _$Peers_CountImpl value, $Res Function(_$Peers_CountImpl) then) =
      __$$Peers_CountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int field0});
}

/// @nodoc
class __$$Peers_CountImplCopyWithImpl<$Res>
    extends _$PeersCopyWithImpl<$Res, _$Peers_CountImpl>
    implements _$$Peers_CountImplCopyWith<$Res> {
  __$$Peers_CountImplCopyWithImpl(
      _$Peers_CountImpl _value, $Res Function(_$Peers_CountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$Peers_CountImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Peers_CountImpl implements Peers_Count {
  const _$Peers_CountImpl(this.field0);

  @override
  final int field0;

  @override
  String toString() {
    return 'Peers.count(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Peers_CountImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Peers_CountImplCopyWith<_$Peers_CountImpl> get copyWith =>
      __$$Peers_CountImplCopyWithImpl<_$Peers_CountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int field0) count,
    required TResult Function(List<PeerSessionStats> field0) full,
  }) {
    return count(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int field0)? count,
    TResult? Function(List<PeerSessionStats> field0)? full,
  }) {
    return count?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int field0)? count,
    TResult Function(List<PeerSessionStats> field0)? full,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Peers_Count value) count,
    required TResult Function(Peers_Full value) full,
  }) {
    return count(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Peers_Count value)? count,
    TResult? Function(Peers_Full value)? full,
  }) {
    return count?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Peers_Count value)? count,
    TResult Function(Peers_Full value)? full,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count(this);
    }
    return orElse();
  }
}

abstract class Peers_Count implements Peers {
  const factory Peers_Count(final int field0) = _$Peers_CountImpl;

  @override
  int get field0;
  @JsonKey(ignore: true)
  _$$Peers_CountImplCopyWith<_$Peers_CountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Peers_FullImplCopyWith<$Res> {
  factory _$$Peers_FullImplCopyWith(
          _$Peers_FullImpl value, $Res Function(_$Peers_FullImpl) then) =
      __$$Peers_FullImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PeerSessionStats> field0});
}

/// @nodoc
class __$$Peers_FullImplCopyWithImpl<$Res>
    extends _$PeersCopyWithImpl<$Res, _$Peers_FullImpl>
    implements _$$Peers_FullImplCopyWith<$Res> {
  __$$Peers_FullImplCopyWithImpl(
      _$Peers_FullImpl _value, $Res Function(_$Peers_FullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$Peers_FullImpl(
      null == field0
          ? _value._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as List<PeerSessionStats>,
    ));
  }
}

/// @nodoc

class _$Peers_FullImpl implements Peers_Full {
  const _$Peers_FullImpl(final List<PeerSessionStats> field0)
      : _field0 = field0;

  final List<PeerSessionStats> _field0;
  @override
  List<PeerSessionStats> get field0 {
    if (_field0 is EqualUnmodifiableListView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field0);
  }

  @override
  String toString() {
    return 'Peers.full(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Peers_FullImpl &&
            const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Peers_FullImplCopyWith<_$Peers_FullImpl> get copyWith =>
      __$$Peers_FullImplCopyWithImpl<_$Peers_FullImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int field0) count,
    required TResult Function(List<PeerSessionStats> field0) full,
  }) {
    return full(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int field0)? count,
    TResult? Function(List<PeerSessionStats> field0)? full,
  }) {
    return full?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int field0)? count,
    TResult Function(List<PeerSessionStats> field0)? full,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Peers_Count value) count,
    required TResult Function(Peers_Full value) full,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Peers_Count value)? count,
    TResult? Function(Peers_Full value)? full,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Peers_Count value)? count,
    TResult Function(Peers_Full value)? full,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }
}

abstract class Peers_Full implements Peers {
  const factory Peers_Full(final List<PeerSessionStats> field0) =
      _$Peers_FullImpl;

  @override
  List<PeerSessionStats> get field0;
  @JsonKey(ignore: true)
  _$$Peers_FullImplCopyWith<_$Peers_FullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
