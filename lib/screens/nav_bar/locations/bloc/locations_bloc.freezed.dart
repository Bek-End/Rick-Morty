// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'locations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationsEventTearOff {
  const _$LocationsEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _InfoEvent info({String locationId}) {
    return _InfoEvent(
      locationId: locationId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationsEvent = _$LocationsEventTearOff();

/// @nodoc
mixin _$LocationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult info(String locationId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult info(String locationId),
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
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  final LocationsEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LocationsEventCopyWithImpl<$Res>
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
    return 'LocationsEvent.started()';
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
    @required TResult info(String locationId),
  }) {
    assert(started != null);
    assert(info != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult info(String locationId),
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

abstract class _Started implements LocationsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$InfoEventCopyWith<$Res> {
  factory _$InfoEventCopyWith(
          _InfoEvent value, $Res Function(_InfoEvent) then) =
      __$InfoEventCopyWithImpl<$Res>;
  $Res call({String locationId});
}

/// @nodoc
class __$InfoEventCopyWithImpl<$Res> extends _$LocationsEventCopyWithImpl<$Res>
    implements _$InfoEventCopyWith<$Res> {
  __$InfoEventCopyWithImpl(_InfoEvent _value, $Res Function(_InfoEvent) _then)
      : super(_value, (v) => _then(v as _InfoEvent));

  @override
  _InfoEvent get _value => super._value as _InfoEvent;

  @override
  $Res call({
    Object locationId = freezed,
  }) {
    return _then(_InfoEvent(
      locationId:
          locationId == freezed ? _value.locationId : locationId as String,
    ));
  }
}

@Implements(LocationInfo)

/// @nodoc
class _$_InfoEvent implements _InfoEvent {
  const _$_InfoEvent({this.locationId});

  @override
  final String locationId;

  @override
  String toString() {
    return 'LocationsEvent.info(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoEvent &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationId);

  @JsonKey(ignore: true)
  @override
  _$InfoEventCopyWith<_InfoEvent> get copyWith =>
      __$InfoEventCopyWithImpl<_InfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult info(String locationId),
  }) {
    assert(started != null);
    assert(info != null);
    return info(locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult info(String locationId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(locationId);
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

abstract class _InfoEvent implements LocationsEvent, LocationInfo {
  const factory _InfoEvent({String locationId}) = _$_InfoEvent;

  String get locationId;
  @JsonKey(ignore: true)
  _$InfoEventCopyWith<_InfoEvent> get copyWith;
}

/// @nodoc
class _$LocationsStateTearOff {
  const _$LocationsStateTearOff();

// ignore: unused_element
  LocationsLoadingState loading() {
    return LocationsLoadingState();
  }

// ignore: unused_element
  LocationsErrorState error({String errorMessage}) {
    return LocationsErrorState(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  LocationsInitialState initial({LocationsModel locationsList}) {
    return LocationsInitialState(
      locationsList: locationsList,
    );
  }

// ignore: unused_element
  LocationInfoInitialState info({LocationModel locationInfo}) {
    return LocationInfoInitialState(
      locationInfo: locationInfo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationsState = _$LocationsStateTearOff();

/// @nodoc
mixin _$LocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult info(LocationModel locationInfo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult info(LocationModel locationInfo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult info(LocationInfoInitialState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult info(LocationInfoInitialState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  final LocationsState _value;
  // ignore: unused_field
  final $Res Function(LocationsState) _then;
}

/// @nodoc
abstract class $LocationsLoadingStateCopyWith<$Res> {
  factory $LocationsLoadingStateCopyWith(LocationsLoadingState value,
          $Res Function(LocationsLoadingState) then) =
      _$LocationsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsLoadingStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsLoadingStateCopyWith<$Res> {
  _$LocationsLoadingStateCopyWithImpl(
      LocationsLoadingState _value, $Res Function(LocationsLoadingState) _then)
      : super(_value, (v) => _then(v as LocationsLoadingState));

  @override
  LocationsLoadingState get _value => super._value as LocationsLoadingState;
}

/// @nodoc
class _$LocationsLoadingState implements LocationsLoadingState {
  _$LocationsLoadingState();

  @override
  String toString() {
    return 'LocationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult info(LocationModel locationInfo),
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
    TResult initial(LocationsModel locationsList),
    TResult info(LocationModel locationInfo),
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
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult info(LocationInfoInitialState value),
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
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult info(LocationInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationsLoadingState implements LocationsState {
  factory LocationsLoadingState() = _$LocationsLoadingState;
}

/// @nodoc
abstract class $LocationsErrorStateCopyWith<$Res> {
  factory $LocationsErrorStateCopyWith(
          LocationsErrorState value, $Res Function(LocationsErrorState) then) =
      _$LocationsErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$LocationsErrorStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsErrorStateCopyWith<$Res> {
  _$LocationsErrorStateCopyWithImpl(
      LocationsErrorState _value, $Res Function(LocationsErrorState) _then)
      : super(_value, (v) => _then(v as LocationsErrorState));

  @override
  LocationsErrorState get _value => super._value as LocationsErrorState;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(LocationsErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$LocationsErrorState implements LocationsErrorState {
  _$LocationsErrorState({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LocationsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationsErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $LocationsErrorStateCopyWith<LocationsErrorState> get copyWith =>
      _$LocationsErrorStateCopyWithImpl<LocationsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult info(LocationModel locationInfo),
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
    TResult initial(LocationsModel locationsList),
    TResult info(LocationModel locationInfo),
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
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult info(LocationInfoInitialState value),
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
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult info(LocationInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationsErrorState implements LocationsState {
  factory LocationsErrorState({String errorMessage}) = _$LocationsErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  $LocationsErrorStateCopyWith<LocationsErrorState> get copyWith;
}

/// @nodoc
abstract class $LocationsInitialStateCopyWith<$Res> {
  factory $LocationsInitialStateCopyWith(LocationsInitialState value,
          $Res Function(LocationsInitialState) then) =
      _$LocationsInitialStateCopyWithImpl<$Res>;
  $Res call({LocationsModel locationsList});
}

/// @nodoc
class _$LocationsInitialStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsInitialStateCopyWith<$Res> {
  _$LocationsInitialStateCopyWithImpl(
      LocationsInitialState _value, $Res Function(LocationsInitialState) _then)
      : super(_value, (v) => _then(v as LocationsInitialState));

  @override
  LocationsInitialState get _value => super._value as LocationsInitialState;

  @override
  $Res call({
    Object locationsList = freezed,
  }) {
    return _then(LocationsInitialState(
      locationsList: locationsList == freezed
          ? _value.locationsList
          : locationsList as LocationsModel,
    ));
  }
}

@Implements(Locations)

/// @nodoc
class _$LocationsInitialState implements LocationsInitialState {
  const _$LocationsInitialState({this.locationsList});

  @override
  final LocationsModel locationsList;

  @override
  String toString() {
    return 'LocationsState.initial(locationsList: $locationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationsInitialState &&
            (identical(other.locationsList, locationsList) ||
                const DeepCollectionEquality()
                    .equals(other.locationsList, locationsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationsList);

  @JsonKey(ignore: true)
  @override
  $LocationsInitialStateCopyWith<LocationsInitialState> get copyWith =>
      _$LocationsInitialStateCopyWithImpl<LocationsInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult info(LocationModel locationInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return initial(locationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult info(LocationModel locationInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(locationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult info(LocationInfoInitialState value),
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
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult info(LocationInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationsInitialState implements LocationsState, Locations {
  const factory LocationsInitialState({LocationsModel locationsList}) =
      _$LocationsInitialState;

  LocationsModel get locationsList;
  @JsonKey(ignore: true)
  $LocationsInitialStateCopyWith<LocationsInitialState> get copyWith;
}

/// @nodoc
abstract class $LocationInfoInitialStateCopyWith<$Res> {
  factory $LocationInfoInitialStateCopyWith(LocationInfoInitialState value,
          $Res Function(LocationInfoInitialState) then) =
      _$LocationInfoInitialStateCopyWithImpl<$Res>;
  $Res call({LocationModel locationInfo});
}

/// @nodoc
class _$LocationInfoInitialStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements $LocationInfoInitialStateCopyWith<$Res> {
  _$LocationInfoInitialStateCopyWithImpl(LocationInfoInitialState _value,
      $Res Function(LocationInfoInitialState) _then)
      : super(_value, (v) => _then(v as LocationInfoInitialState));

  @override
  LocationInfoInitialState get _value =>
      super._value as LocationInfoInitialState;

  @override
  $Res call({
    Object locationInfo = freezed,
  }) {
    return _then(LocationInfoInitialState(
      locationInfo: locationInfo == freezed
          ? _value.locationInfo
          : locationInfo as LocationModel,
    ));
  }
}

@Implements(LocationInformation)

/// @nodoc
class _$LocationInfoInitialState implements LocationInfoInitialState {
  const _$LocationInfoInitialState({this.locationInfo});

  @override
  final LocationModel locationInfo;

  @override
  String toString() {
    return 'LocationsState.info(locationInfo: $locationInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationInfoInitialState &&
            (identical(other.locationInfo, locationInfo) ||
                const DeepCollectionEquality()
                    .equals(other.locationInfo, locationInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationInfo);

  @JsonKey(ignore: true)
  @override
  $LocationInfoInitialStateCopyWith<LocationInfoInitialState> get copyWith =>
      _$LocationInfoInitialStateCopyWithImpl<LocationInfoInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult info(LocationModel locationInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(info != null);
    return info(locationInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult info(LocationModel locationInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(locationInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult info(LocationInfoInitialState value),
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
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult info(LocationInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class LocationInfoInitialState
    implements LocationsState, LocationInformation {
  const factory LocationInfoInitialState({LocationModel locationInfo}) =
      _$LocationInfoInitialState;

  LocationModel get locationInfo;
  @JsonKey(ignore: true)
  $LocationInfoInitialStateCopyWith<LocationInfoInitialState> get copyWith;
}
