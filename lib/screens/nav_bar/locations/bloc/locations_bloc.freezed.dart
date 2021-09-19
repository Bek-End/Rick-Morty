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
  _LocationsFilterEvent filter(
      {int typeNumber, int measurementsNumber, int sort}) {
    return _LocationsFilterEvent(
      typeNumber: typeNumber,
      measurementsNumber: measurementsNumber,
      sort: sort,
    );
  }

// ignore: unused_element
  _LocationCheckFilterEvent check({int index, List<String> list}) {
    return _LocationCheckFilterEvent(
      index: index,
      list: list,
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
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult filter(_LocationsFilterEvent value),
    @required TResult check(_LocationCheckFilterEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult filter(_LocationsFilterEvent value),
    TResult check(_LocationCheckFilterEvent value),
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
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(started != null);
    assert(filter != null);
    assert(check != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
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
    @required TResult filter(_LocationsFilterEvent value),
    @required TResult check(_LocationCheckFilterEvent value),
  }) {
    assert(started != null);
    assert(filter != null);
    assert(check != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult filter(_LocationsFilterEvent value),
    TResult check(_LocationCheckFilterEvent value),
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
abstract class _$LocationsFilterEventCopyWith<$Res> {
  factory _$LocationsFilterEventCopyWith(_LocationsFilterEvent value,
          $Res Function(_LocationsFilterEvent) then) =
      __$LocationsFilterEventCopyWithImpl<$Res>;
  $Res call({int typeNumber, int measurementsNumber, int sort});
}

/// @nodoc
class __$LocationsFilterEventCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res>
    implements _$LocationsFilterEventCopyWith<$Res> {
  __$LocationsFilterEventCopyWithImpl(
      _LocationsFilterEvent _value, $Res Function(_LocationsFilterEvent) _then)
      : super(_value, (v) => _then(v as _LocationsFilterEvent));

  @override
  _LocationsFilterEvent get _value => super._value as _LocationsFilterEvent;

  @override
  $Res call({
    Object typeNumber = freezed,
    Object measurementsNumber = freezed,
    Object sort = freezed,
  }) {
    return _then(_LocationsFilterEvent(
      typeNumber: typeNumber == freezed ? _value.typeNumber : typeNumber as int,
      measurementsNumber: measurementsNumber == freezed
          ? _value.measurementsNumber
          : measurementsNumber as int,
      sort: sort == freezed ? _value.sort : sort as int,
    ));
  }
}

@Implements(LocationsFilter)

/// @nodoc
class _$_LocationsFilterEvent implements _LocationsFilterEvent {
  const _$_LocationsFilterEvent(
      {this.typeNumber, this.measurementsNumber, this.sort});

  @override
  final int typeNumber;
  @override
  final int measurementsNumber;
  @override
  final int sort;

  @override
  String toString() {
    return 'LocationsEvent.filter(typeNumber: $typeNumber, measurementsNumber: $measurementsNumber, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationsFilterEvent &&
            (identical(other.typeNumber, typeNumber) ||
                const DeepCollectionEquality()
                    .equals(other.typeNumber, typeNumber)) &&
            (identical(other.measurementsNumber, measurementsNumber) ||
                const DeepCollectionEquality()
                    .equals(other.measurementsNumber, measurementsNumber)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(typeNumber) ^
      const DeepCollectionEquality().hash(measurementsNumber) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  _$LocationsFilterEventCopyWith<_LocationsFilterEvent> get copyWith =>
      __$LocationsFilterEventCopyWithImpl<_LocationsFilterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(started != null);
    assert(filter != null);
    assert(check != null);
    return filter(typeNumber, measurementsNumber, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(typeNumber, measurementsNumber, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult filter(_LocationsFilterEvent value),
    @required TResult check(_LocationCheckFilterEvent value),
  }) {
    assert(started != null);
    assert(filter != null);
    assert(check != null);
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult filter(_LocationsFilterEvent value),
    TResult check(_LocationCheckFilterEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _LocationsFilterEvent
    implements LocationsEvent, LocationsFilter {
  const factory _LocationsFilterEvent(
      {int typeNumber,
      int measurementsNumber,
      int sort}) = _$_LocationsFilterEvent;

  int get typeNumber;
  int get measurementsNumber;
  int get sort;
  @JsonKey(ignore: true)
  _$LocationsFilterEventCopyWith<_LocationsFilterEvent> get copyWith;
}

/// @nodoc
abstract class _$LocationCheckFilterEventCopyWith<$Res> {
  factory _$LocationCheckFilterEventCopyWith(_LocationCheckFilterEvent value,
          $Res Function(_LocationCheckFilterEvent) then) =
      __$LocationCheckFilterEventCopyWithImpl<$Res>;
  $Res call({int index, List<String> list});
}

/// @nodoc
class __$LocationCheckFilterEventCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res>
    implements _$LocationCheckFilterEventCopyWith<$Res> {
  __$LocationCheckFilterEventCopyWithImpl(_LocationCheckFilterEvent _value,
      $Res Function(_LocationCheckFilterEvent) _then)
      : super(_value, (v) => _then(v as _LocationCheckFilterEvent));

  @override
  _LocationCheckFilterEvent get _value =>
      super._value as _LocationCheckFilterEvent;

  @override
  $Res call({
    Object index = freezed,
    Object list = freezed,
  }) {
    return _then(_LocationCheckFilterEvent(
      index: index == freezed ? _value.index : index as int,
      list: list == freezed ? _value.list : list as List<String>,
    ));
  }
}

@Implements(FilterLocations)

/// @nodoc
class _$_LocationCheckFilterEvent implements _LocationCheckFilterEvent {
  const _$_LocationCheckFilterEvent({this.index, this.list});

  @override
  final int index;
  @override
  final List<String> list;

  @override
  String toString() {
    return 'LocationsEvent.check(index: $index, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationCheckFilterEvent &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$LocationCheckFilterEventCopyWith<_LocationCheckFilterEvent> get copyWith =>
      __$LocationCheckFilterEventCopyWithImpl<_LocationCheckFilterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(started != null);
    assert(filter != null);
    assert(check != null);
    return check(index, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(index, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult filter(_LocationsFilterEvent value),
    @required TResult check(_LocationCheckFilterEvent value),
  }) {
    assert(started != null);
    assert(filter != null);
    assert(check != null);
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult filter(_LocationsFilterEvent value),
    TResult check(_LocationCheckFilterEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _LocationCheckFilterEvent
    implements LocationsEvent, FilterLocations {
  const factory _LocationCheckFilterEvent({int index, List<String> list}) =
      _$_LocationCheckFilterEvent;

  int get index;
  List<String> get list;
  @JsonKey(ignore: true)
  _$LocationCheckFilterEventCopyWith<_LocationCheckFilterEvent> get copyWith;
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
  LocationsFilterState filter(
      {int typeNumber, int measurementsNumber, int sort}) {
    return LocationsFilterState(
      typeNumber: typeNumber,
      measurementsNumber: measurementsNumber,
      sort: sort,
    );
  }

// ignore: unused_element
  LocationCheckFilterState check({int index, List<String> list}) {
    return LocationCheckFilterState(
      index: index,
      list: list,
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
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult filter(LocationsFilterState value),
    @required TResult check(LocationCheckFilterState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult filter(LocationsFilterState value),
    TResult check(LocationCheckFilterState value),
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
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
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
    @required TResult filter(LocationsFilterState value),
    @required TResult check(LocationCheckFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult filter(LocationsFilterState value),
    TResult check(LocationCheckFilterState value),
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
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
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
    @required TResult filter(LocationsFilterState value),
    @required TResult check(LocationCheckFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult filter(LocationsFilterState value),
    TResult check(LocationCheckFilterState value),
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
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return initial(locationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
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
    @required TResult filter(LocationsFilterState value),
    @required TResult check(LocationCheckFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult filter(LocationsFilterState value),
    TResult check(LocationCheckFilterState value),
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
abstract class $LocationsFilterStateCopyWith<$Res> {
  factory $LocationsFilterStateCopyWith(LocationsFilterState value,
          $Res Function(LocationsFilterState) then) =
      _$LocationsFilterStateCopyWithImpl<$Res>;
  $Res call({int typeNumber, int measurementsNumber, int sort});
}

/// @nodoc
class _$LocationsFilterStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsFilterStateCopyWith<$Res> {
  _$LocationsFilterStateCopyWithImpl(
      LocationsFilterState _value, $Res Function(LocationsFilterState) _then)
      : super(_value, (v) => _then(v as LocationsFilterState));

  @override
  LocationsFilterState get _value => super._value as LocationsFilterState;

  @override
  $Res call({
    Object typeNumber = freezed,
    Object measurementsNumber = freezed,
    Object sort = freezed,
  }) {
    return _then(LocationsFilterState(
      typeNumber: typeNumber == freezed ? _value.typeNumber : typeNumber as int,
      measurementsNumber: measurementsNumber == freezed
          ? _value.measurementsNumber
          : measurementsNumber as int,
      sort: sort == freezed ? _value.sort : sort as int,
    ));
  }
}

@Implements(LocationFilter)

/// @nodoc
class _$LocationsFilterState implements LocationsFilterState {
  const _$LocationsFilterState(
      {this.typeNumber, this.measurementsNumber, this.sort});

  @override
  final int typeNumber;
  @override
  final int measurementsNumber;
  @override
  final int sort;

  @override
  String toString() {
    return 'LocationsState.filter(typeNumber: $typeNumber, measurementsNumber: $measurementsNumber, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationsFilterState &&
            (identical(other.typeNumber, typeNumber) ||
                const DeepCollectionEquality()
                    .equals(other.typeNumber, typeNumber)) &&
            (identical(other.measurementsNumber, measurementsNumber) ||
                const DeepCollectionEquality()
                    .equals(other.measurementsNumber, measurementsNumber)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(typeNumber) ^
      const DeepCollectionEquality().hash(measurementsNumber) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  $LocationsFilterStateCopyWith<LocationsFilterState> get copyWith =>
      _$LocationsFilterStateCopyWithImpl<LocationsFilterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return filter(typeNumber, measurementsNumber, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(typeNumber, measurementsNumber, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult filter(LocationsFilterState value),
    @required TResult check(LocationCheckFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult filter(LocationsFilterState value),
    TResult check(LocationCheckFilterState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class LocationsFilterState implements LocationsState, LocationFilter {
  const factory LocationsFilterState(
      {int typeNumber,
      int measurementsNumber,
      int sort}) = _$LocationsFilterState;

  int get typeNumber;
  int get measurementsNumber;
  int get sort;
  @JsonKey(ignore: true)
  $LocationsFilterStateCopyWith<LocationsFilterState> get copyWith;
}

/// @nodoc
abstract class $LocationCheckFilterStateCopyWith<$Res> {
  factory $LocationCheckFilterStateCopyWith(LocationCheckFilterState value,
          $Res Function(LocationCheckFilterState) then) =
      _$LocationCheckFilterStateCopyWithImpl<$Res>;
  $Res call({int index, List<String> list});
}

/// @nodoc
class _$LocationCheckFilterStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements $LocationCheckFilterStateCopyWith<$Res> {
  _$LocationCheckFilterStateCopyWithImpl(LocationCheckFilterState _value,
      $Res Function(LocationCheckFilterState) _then)
      : super(_value, (v) => _then(v as LocationCheckFilterState));

  @override
  LocationCheckFilterState get _value =>
      super._value as LocationCheckFilterState;

  @override
  $Res call({
    Object index = freezed,
    Object list = freezed,
  }) {
    return _then(LocationCheckFilterState(
      index: index == freezed ? _value.index : index as int,
      list: list == freezed ? _value.list : list as List<String>,
    ));
  }
}

@Implements(FilterLocation)

/// @nodoc
class _$LocationCheckFilterState implements LocationCheckFilterState {
  const _$LocationCheckFilterState({this.index, this.list});

  @override
  final int index;
  @override
  final List<String> list;

  @override
  String toString() {
    return 'LocationsState.check(index: $index, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationCheckFilterState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $LocationCheckFilterStateCopyWith<LocationCheckFilterState> get copyWith =>
      _$LocationCheckFilterStateCopyWithImpl<LocationCheckFilterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult initial(LocationsModel locationsList),
    @required TResult filter(int typeNumber, int measurementsNumber, int sort),
    @required TResult check(int index, List<String> list),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return check(index, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult initial(LocationsModel locationsList),
    TResult filter(int typeNumber, int measurementsNumber, int sort),
    TResult check(int index, List<String> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(index, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(LocationsLoadingState value),
    @required TResult error(LocationsErrorState value),
    @required TResult initial(LocationsInitialState value),
    @required TResult filter(LocationsFilterState value),
    @required TResult check(LocationCheckFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(initial != null);
    assert(filter != null);
    assert(check != null);
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(LocationsLoadingState value),
    TResult error(LocationsErrorState value),
    TResult initial(LocationsInitialState value),
    TResult filter(LocationsFilterState value),
    TResult check(LocationCheckFilterState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class LocationCheckFilterState
    implements LocationsState, FilterLocation {
  const factory LocationCheckFilterState({int index, List<String> list}) =
      _$LocationCheckFilterState;

  int get index;
  List<String> get list;
  @JsonKey(ignore: true)
  $LocationCheckFilterStateCopyWith<LocationCheckFilterState> get copyWith;
}
