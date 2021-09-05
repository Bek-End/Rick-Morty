// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

// ignore: unused_element
  _Started started({String locationId}) {
    return _Started(
      locationId: locationId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  String get locationId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String locationId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String locationId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LocationEventCopyWith<LocationEvent> get copyWith;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
  $Res call({String locationId});
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;

  @override
  $Res call({
    Object locationId = freezed,
  }) {
    return _then(_value.copyWith(
      locationId:
          locationId == freezed ? _value.locationId : locationId as String,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> implements $LocationEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({String locationId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object locationId = freezed,
  }) {
    return _then(_Started(
      locationId:
          locationId == freezed ? _value.locationId : locationId as String,
    ));
  }
}

@Implements(LocationInfo)

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({this.locationId});

  @override
  final String locationId;

  @override
  String toString() {
    return 'LocationEvent.started(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String locationId),
  }) {
    assert(started != null);
    return started(locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String locationId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(locationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocationEvent, LocationInfo {
  const factory _Started({String locationId}) = _$_Started;

  @override
  String get locationId;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

// ignore: unused_element
  LocationInfoInitialState initial({LocationModel locationInfo}) {
    return LocationInfoInitialState(
      locationInfo: locationInfo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  LocationModel get locationInfo;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(LocationModel locationInfo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(LocationModel locationInfo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(LocationInfoInitialState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(LocationInfoInitialState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call({LocationModel locationInfo});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object locationInfo = freezed,
  }) {
    return _then(_value.copyWith(
      locationInfo: locationInfo == freezed
          ? _value.locationInfo
          : locationInfo as LocationModel,
    ));
  }
}

/// @nodoc
abstract class $LocationInfoInitialStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory $LocationInfoInitialStateCopyWith(LocationInfoInitialState value,
          $Res Function(LocationInfoInitialState) then) =
      _$LocationInfoInitialStateCopyWithImpl<$Res>;
  @override
  $Res call({LocationModel locationInfo});
}

/// @nodoc
class _$LocationInfoInitialStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.initial(locationInfo: $locationInfo)';
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
    @required TResult initial(LocationModel locationInfo),
  }) {
    assert(initial != null);
    return initial(locationInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(LocationModel locationInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(locationInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(LocationInfoInitialState value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(LocationInfoInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationInfoInitialState
    implements LocationState, LocationInformation {
  const factory LocationInfoInitialState({LocationModel locationInfo}) =
      _$LocationInfoInitialState;

  @override
  LocationModel get locationInfo;
  @override
  @JsonKey(ignore: true)
  $LocationInfoInitialStateCopyWith<LocationInfoInitialState> get copyWith;
}
