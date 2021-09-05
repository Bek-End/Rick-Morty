// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EpisodesEventTearOff {
  const _$EpisodesEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _InfoEvent info({String episodId}) {
    return _InfoEvent(
      episodId: episodId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodesEvent = _$EpisodesEventTearOff();

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult info(String episodId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult info(String episodId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult info(_InfoEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult info(_InfoEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  final EpisodesEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'EpisodesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult info(String episodId),
  }) {
    assert(started != null);
    assert(info != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult info(String episodId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult info(_InfoEvent value),
  }) {
    assert(started != null);
    assert(info != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult info(_InfoEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EpisodesEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$InfoEventCopyWith<$Res> {
  factory _$InfoEventCopyWith(
          _InfoEvent value, $Res Function(_InfoEvent) then) =
      __$InfoEventCopyWithImpl<$Res>;
  $Res call({String episodId});
}

/// @nodoc
class __$InfoEventCopyWithImpl<$Res> extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$InfoEventCopyWith<$Res> {
  __$InfoEventCopyWithImpl(_InfoEvent _value, $Res Function(_InfoEvent) _then)
      : super(_value, (v) => _then(v as _InfoEvent));

  @override
  _InfoEvent get _value => super._value as _InfoEvent;

  @override
  $Res call({
    Object episodId = freezed,
  }) {
    return _then(_InfoEvent(
      episodId: episodId == freezed ? _value.episodId : episodId as String,
    ));
  }
}

@Implements(EpisodInfo)

/// @nodoc
class _$_InfoEvent implements _InfoEvent {
  const _$_InfoEvent({this.episodId});

  @override
  final String episodId;

  @override
  String toString() {
    return 'EpisodesEvent.info(episodId: $episodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoEvent &&
            (identical(other.episodId, episodId) ||
                const DeepCollectionEquality()
                    .equals(other.episodId, episodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodId);

  @JsonKey(ignore: true)
  @override
  _$InfoEventCopyWith<_InfoEvent> get copyWith =>
      __$InfoEventCopyWithImpl<_InfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult info(String episodId),
  }) {
    assert(started != null);
    assert(info != null);
    return info(episodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult info(String episodId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(episodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult info(_InfoEvent value),
  }) {
    assert(started != null);
    assert(info != null);
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult info(_InfoEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class _InfoEvent implements EpisodesEvent, EpisodInfo {
  const factory _InfoEvent({String episodId}) = _$_InfoEvent;

  String get episodId;
  @JsonKey(ignore: true)
  _$InfoEventCopyWith<_InfoEvent> get copyWith;
}

/// @nodoc
class _$EpisodesStateTearOff {
  const _$EpisodesStateTearOff();

// ignore: unused_element
  EpisodesLoadingState loading() {
    return EpisodesLoadingState();
  }

// ignore: unused_element
  EpisodesErrorState error({String errorMessage}) {
    return EpisodesErrorState(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  EpisodesInitialState initial({List<List<EpisodesData>> episodesList}) {
    return EpisodesInitialState(
      episodesList: episodesList,
    );
  }

// ignore: unused_element
  EpisodInfoInitialState info({EpisodModel episodInfo}) {
    return EpisodInfoInitialState(
      episodInfo: episodInfo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodesState = _$EpisodesStateTearOff();

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(List<List<EpisodesData>> episodesList),
    @required TResult info(EpisodModel episodInfo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(List<List<EpisodesData>> episodesList),
    TResult info(EpisodModel episodInfo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(EpisodesLoadingState value),
    @required TResult error(EpisodesErrorState value),
    @required TResult initial(EpisodesInitialState value),
    @required TResult info(EpisodInfoInitialState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(EpisodesLoadingState value),
    TResult error(EpisodesErrorState value),
    TResult initial(EpisodesInitialState value),
    TResult info(EpisodInfoInitialState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  final EpisodesState _value;
  // ignore: unused_field
  final $Res Function(EpisodesState) _then;
}

/// @nodoc
abstract class $EpisodesLoadingStateCopyWith<$Res> {
  factory $EpisodesLoadingStateCopyWith(EpisodesLoadingState value,
          $Res Function(EpisodesLoadingState) then) =
      _$EpisodesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesLoadingStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesLoadingStateCopyWith<$Res> {
  _$EpisodesLoadingStateCopyWithImpl(
      EpisodesLoadingState _value, $Res Function(EpisodesLoadingState) _then)
      : super(_value, (v) => _then(v as EpisodesLoadingState));

  @override
  EpisodesLoadingState get _value => super._value as EpisodesLoadingState;
}

/// @nodoc
class _$EpisodesLoadingState implements EpisodesLoadingState {
  _$EpisodesLoadingState();

  @override
  String toString() {
    return 'EpisodesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(List<List<EpisodesData>> episodesList),
    @required TResult info(EpisodModel episodInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(List<List<EpisodesData>> episodesList),
    TResult info(EpisodModel episodInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(EpisodesLoadingState value),
    @required TResult error(EpisodesErrorState value),
    @required TResult initial(EpisodesInitialState value),
    @required TResult info(EpisodInfoInitialState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(EpisodesLoadingState value),
    TResult error(EpisodesErrorState value),
    TResult initial(EpisodesInitialState value),
    TResult info(EpisodInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodesLoadingState implements EpisodesState {
  factory EpisodesLoadingState() = _$EpisodesLoadingState;
}

/// @nodoc
abstract class $EpisodesErrorStateCopyWith<$Res> {
  factory $EpisodesErrorStateCopyWith(
          EpisodesErrorState value, $Res Function(EpisodesErrorState) then) =
      _$EpisodesErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$EpisodesErrorStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesErrorStateCopyWith<$Res> {
  _$EpisodesErrorStateCopyWithImpl(
      EpisodesErrorState _value, $Res Function(EpisodesErrorState) _then)
      : super(_value, (v) => _then(v as EpisodesErrorState));

  @override
  EpisodesErrorState get _value => super._value as EpisodesErrorState;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(EpisodesErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$EpisodesErrorState implements EpisodesErrorState {
  _$EpisodesErrorState({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EpisodesState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodesErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $EpisodesErrorStateCopyWith<EpisodesErrorState> get copyWith =>
      _$EpisodesErrorStateCopyWithImpl<EpisodesErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(List<List<EpisodesData>> episodesList),
    @required TResult info(EpisodModel episodInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(List<List<EpisodesData>> episodesList),
    TResult info(EpisodModel episodInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(EpisodesLoadingState value),
    @required TResult error(EpisodesErrorState value),
    @required TResult initial(EpisodesInitialState value),
    @required TResult info(EpisodInfoInitialState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(EpisodesLoadingState value),
    TResult error(EpisodesErrorState value),
    TResult initial(EpisodesInitialState value),
    TResult info(EpisodInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodesErrorState implements EpisodesState {
  factory EpisodesErrorState({String errorMessage}) = _$EpisodesErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  $EpisodesErrorStateCopyWith<EpisodesErrorState> get copyWith;
}

/// @nodoc
abstract class $EpisodesInitialStateCopyWith<$Res> {
  factory $EpisodesInitialStateCopyWith(EpisodesInitialState value,
          $Res Function(EpisodesInitialState) then) =
      _$EpisodesInitialStateCopyWithImpl<$Res>;
  $Res call({List<List<EpisodesData>> episodesList});
}

/// @nodoc
class _$EpisodesInitialStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesInitialStateCopyWith<$Res> {
  _$EpisodesInitialStateCopyWithImpl(
      EpisodesInitialState _value, $Res Function(EpisodesInitialState) _then)
      : super(_value, (v) => _then(v as EpisodesInitialState));

  @override
  EpisodesInitialState get _value => super._value as EpisodesInitialState;

  @override
  $Res call({
    Object episodesList = freezed,
  }) {
    return _then(EpisodesInitialState(
      episodesList: episodesList == freezed
          ? _value.episodesList
          : episodesList as List<List<EpisodesData>>,
    ));
  }
}

@Implements(Episod)

/// @nodoc
class _$EpisodesInitialState implements EpisodesInitialState {
  const _$EpisodesInitialState({this.episodesList});

  @override
  final List<List<EpisodesData>> episodesList;

  @override
  String toString() {
    return 'EpisodesState.initial(episodesList: $episodesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodesInitialState &&
            (identical(other.episodesList, episodesList) ||
                const DeepCollectionEquality()
                    .equals(other.episodesList, episodesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodesList);

  @JsonKey(ignore: true)
  @override
  $EpisodesInitialStateCopyWith<EpisodesInitialState> get copyWith =>
      _$EpisodesInitialStateCopyWithImpl<EpisodesInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(List<List<EpisodesData>> episodesList),
    @required TResult info(EpisodModel episodInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return initial(episodesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(List<List<EpisodesData>> episodesList),
    TResult info(EpisodModel episodInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(episodesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(EpisodesLoadingState value),
    @required TResult error(EpisodesErrorState value),
    @required TResult initial(EpisodesInitialState value),
    @required TResult info(EpisodInfoInitialState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(EpisodesLoadingState value),
    TResult error(EpisodesErrorState value),
    TResult initial(EpisodesInitialState value),
    TResult info(EpisodInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EpisodesInitialState implements EpisodesState, Episod {
  const factory EpisodesInitialState({List<List<EpisodesData>> episodesList}) =
      _$EpisodesInitialState;

  List<List<EpisodesData>> get episodesList;
  @JsonKey(ignore: true)
  $EpisodesInitialStateCopyWith<EpisodesInitialState> get copyWith;
}

/// @nodoc
abstract class $EpisodInfoInitialStateCopyWith<$Res> {
  factory $EpisodInfoInitialStateCopyWith(EpisodInfoInitialState value,
          $Res Function(EpisodInfoInitialState) then) =
      _$EpisodInfoInitialStateCopyWithImpl<$Res>;
  $Res call({EpisodModel episodInfo});
}

/// @nodoc
class _$EpisodInfoInitialStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodInfoInitialStateCopyWith<$Res> {
  _$EpisodInfoInitialStateCopyWithImpl(EpisodInfoInitialState _value,
      $Res Function(EpisodInfoInitialState) _then)
      : super(_value, (v) => _then(v as EpisodInfoInitialState));

  @override
  EpisodInfoInitialState get _value => super._value as EpisodInfoInitialState;

  @override
  $Res call({
    Object episodInfo = freezed,
  }) {
    return _then(EpisodInfoInitialState(
      episodInfo:
          episodInfo == freezed ? _value.episodInfo : episodInfo as EpisodModel,
    ));
  }
}

@Implements(EpisodeInfo)

/// @nodoc
class _$EpisodInfoInitialState implements EpisodInfoInitialState {
  const _$EpisodInfoInitialState({this.episodInfo});

  @override
  final EpisodModel episodInfo;

  @override
  String toString() {
    return 'EpisodesState.info(episodInfo: $episodInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodInfoInitialState &&
            (identical(other.episodInfo, episodInfo) ||
                const DeepCollectionEquality()
                    .equals(other.episodInfo, episodInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodInfo);

  @JsonKey(ignore: true)
  @override
  $EpisodInfoInitialStateCopyWith<EpisodInfoInitialState> get copyWith =>
      _$EpisodInfoInitialStateCopyWithImpl<EpisodInfoInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(List<List<EpisodesData>> episodesList),
    @required TResult info(EpisodModel episodInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return info(episodInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(List<List<EpisodesData>> episodesList),
    TResult info(EpisodModel episodInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(episodInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(EpisodesLoadingState value),
    @required TResult error(EpisodesErrorState value),
    @required TResult initial(EpisodesInitialState value),
    @required TResult info(EpisodInfoInitialState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(EpisodesLoadingState value),
    TResult error(EpisodesErrorState value),
    TResult initial(EpisodesInitialState value),
    TResult info(EpisodInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class EpisodInfoInitialState implements EpisodesState, EpisodeInfo {
  const factory EpisodInfoInitialState({EpisodModel episodInfo}) =
      _$EpisodInfoInitialState;

  EpisodModel get episodInfo;
  @JsonKey(ignore: true)
  $EpisodInfoInitialStateCopyWith<EpisodInfoInitialState> get copyWith;
}
