// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CharactersEventTearOff {
  const _$CharactersEventTearOff();

// ignore: unused_element
  _CharactersSelectEvent select() {
    return const _CharactersSelectEvent();
  }

// ignore: unused_element
  _CharactersFilterEvent filter(
      {List<bool> statusList, List<bool> genderList, int sort}) {
    return _CharactersFilterEvent(
      statusList: statusList,
      genderList: genderList,
      sort: sort,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_CharactersSelectEvent value),
    @required TResult filter(_CharactersFilterEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_CharactersSelectEvent value),
    TResult filter(_CharactersFilterEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  final CharactersEvent _value;
  // ignore: unused_field
  final $Res Function(CharactersEvent) _then;
}

/// @nodoc
abstract class _$CharactersSelectEventCopyWith<$Res> {
  factory _$CharactersSelectEventCopyWith(_CharactersSelectEvent value,
          $Res Function(_CharactersSelectEvent) then) =
      __$CharactersSelectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersSelectEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$CharactersSelectEventCopyWith<$Res> {
  __$CharactersSelectEventCopyWithImpl(_CharactersSelectEvent _value,
      $Res Function(_CharactersSelectEvent) _then)
      : super(_value, (v) => _then(v as _CharactersSelectEvent));

  @override
  _CharactersSelectEvent get _value => super._value as _CharactersSelectEvent;
}

/// @nodoc
class _$_CharactersSelectEvent implements _CharactersSelectEvent {
  const _$_CharactersSelectEvent();

  @override
  String toString() {
    return 'CharactersEvent.select()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersSelectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  }) {
    assert(select != null);
    assert(filter != null);
    return select();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_CharactersSelectEvent value),
    @required TResult filter(_CharactersFilterEvent value),
  }) {
    assert(select != null);
    assert(filter != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_CharactersSelectEvent value),
    TResult filter(_CharactersFilterEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _CharactersSelectEvent implements CharactersEvent {
  const factory _CharactersSelectEvent() = _$_CharactersSelectEvent;
}

/// @nodoc
abstract class _$CharactersFilterEventCopyWith<$Res> {
  factory _$CharactersFilterEventCopyWith(_CharactersFilterEvent value,
          $Res Function(_CharactersFilterEvent) then) =
      __$CharactersFilterEventCopyWithImpl<$Res>;
  $Res call({List<bool> statusList, List<bool> genderList, int sort});
}

/// @nodoc
class __$CharactersFilterEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$CharactersFilterEventCopyWith<$Res> {
  __$CharactersFilterEventCopyWithImpl(_CharactersFilterEvent _value,
      $Res Function(_CharactersFilterEvent) _then)
      : super(_value, (v) => _then(v as _CharactersFilterEvent));

  @override
  _CharactersFilterEvent get _value => super._value as _CharactersFilterEvent;

  @override
  $Res call({
    Object statusList = freezed,
    Object genderList = freezed,
    Object sort = freezed,
  }) {
    return _then(_CharactersFilterEvent(
      statusList:
          statusList == freezed ? _value.statusList : statusList as List<bool>,
      genderList:
          genderList == freezed ? _value.genderList : genderList as List<bool>,
      sort: sort == freezed ? _value.sort : sort as int,
    ));
  }
}

@Implements(FilterCharacter)

/// @nodoc
class _$_CharactersFilterEvent implements _CharactersFilterEvent {
  const _$_CharactersFilterEvent({this.statusList, this.genderList, this.sort});

  @override
  final List<bool> statusList;
  @override
  final List<bool> genderList;
  @override
  final int sort;

  @override
  String toString() {
    return 'CharactersEvent.filter(statusList: $statusList, genderList: $genderList, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersFilterEvent &&
            (identical(other.statusList, statusList) ||
                const DeepCollectionEquality()
                    .equals(other.statusList, statusList)) &&
            (identical(other.genderList, genderList) ||
                const DeepCollectionEquality()
                    .equals(other.genderList, genderList)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusList) ^
      const DeepCollectionEquality().hash(genderList) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  _$CharactersFilterEventCopyWith<_CharactersFilterEvent> get copyWith =>
      __$CharactersFilterEventCopyWithImpl<_CharactersFilterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  }) {
    assert(select != null);
    assert(filter != null);
    return filter(statusList, genderList, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(statusList, genderList, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_CharactersSelectEvent value),
    @required TResult filter(_CharactersFilterEvent value),
  }) {
    assert(select != null);
    assert(filter != null);
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_CharactersSelectEvent value),
    TResult filter(_CharactersFilterEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _CharactersFilterEvent
    implements CharactersEvent, FilterCharacter {
  const factory _CharactersFilterEvent(
      {List<bool> statusList,
      List<bool> genderList,
      int sort}) = _$_CharactersFilterEvent;

  List<bool> get statusList;
  List<bool> get genderList;
  int get sort;
  @JsonKey(ignore: true)
  _$CharactersFilterEventCopyWith<_CharactersFilterEvent> get copyWith;
}

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

// ignore: unused_element
  CharactersLoadingState loading() {
    return CharactersLoadingState();
  }

// ignore: unused_element
  CharactersErrorState error({String errorMessage}) {
    return CharactersErrorState(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  CharactersSelectState select({CharactersModel charactersList, bool isGrid}) {
    return CharactersSelectState(
      charactersList: charactersList,
      isGrid: isGrid,
    );
  }

// ignore: unused_element
  CharactersFilterState filter(
      {List<bool> statusList, List<bool> genderList, int sort}) {
    return CharactersFilterState(
      statusList: statusList,
      genderList: genderList,
      sort: sort,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(CharactersSelectState value),
    @required TResult filter(CharactersFilterState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(CharactersSelectState value),
    TResult filter(CharactersFilterState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class $CharactersLoadingStateCopyWith<$Res> {
  factory $CharactersLoadingStateCopyWith(CharactersLoadingState value,
          $Res Function(CharactersLoadingState) then) =
      _$CharactersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersLoadingStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersLoadingStateCopyWith<$Res> {
  _$CharactersLoadingStateCopyWithImpl(CharactersLoadingState _value,
      $Res Function(CharactersLoadingState) _then)
      : super(_value, (v) => _then(v as CharactersLoadingState));

  @override
  CharactersLoadingState get _value => super._value as CharactersLoadingState;
}

/// @nodoc
class _$CharactersLoadingState implements CharactersLoadingState {
  _$CharactersLoadingState();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CharactersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
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
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(CharactersSelectState value),
    @required TResult filter(CharactersFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(CharactersSelectState value),
    TResult filter(CharactersFilterState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersLoadingState implements CharactersState {
  factory CharactersLoadingState() = _$CharactersLoadingState;
}

/// @nodoc
abstract class $CharactersErrorStateCopyWith<$Res> {
  factory $CharactersErrorStateCopyWith(CharactersErrorState value,
          $Res Function(CharactersErrorState) then) =
      _$CharactersErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$CharactersErrorStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersErrorStateCopyWith<$Res> {
  _$CharactersErrorStateCopyWithImpl(
      CharactersErrorState _value, $Res Function(CharactersErrorState) _then)
      : super(_value, (v) => _then(v as CharactersErrorState));

  @override
  CharactersErrorState get _value => super._value as CharactersErrorState;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(CharactersErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$CharactersErrorState implements CharactersErrorState {
  _$CharactersErrorState({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CharactersState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharactersErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $CharactersErrorStateCopyWith<CharactersErrorState> get copyWith =>
      _$CharactersErrorStateCopyWithImpl<CharactersErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
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
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(CharactersSelectState value),
    @required TResult filter(CharactersFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(CharactersSelectState value),
    TResult filter(CharactersFilterState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersErrorState implements CharactersState {
  factory CharactersErrorState({String errorMessage}) = _$CharactersErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  $CharactersErrorStateCopyWith<CharactersErrorState> get copyWith;
}

/// @nodoc
abstract class $CharactersSelectStateCopyWith<$Res> {
  factory $CharactersSelectStateCopyWith(CharactersSelectState value,
          $Res Function(CharactersSelectState) then) =
      _$CharactersSelectStateCopyWithImpl<$Res>;
  $Res call({CharactersModel charactersList, bool isGrid});
}

/// @nodoc
class _$CharactersSelectStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersSelectStateCopyWith<$Res> {
  _$CharactersSelectStateCopyWithImpl(
      CharactersSelectState _value, $Res Function(CharactersSelectState) _then)
      : super(_value, (v) => _then(v as CharactersSelectState));

  @override
  CharactersSelectState get _value => super._value as CharactersSelectState;

  @override
  $Res call({
    Object charactersList = freezed,
    Object isGrid = freezed,
  }) {
    return _then(CharactersSelectState(
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList as CharactersModel,
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

@Implements(ListOrGrid)

/// @nodoc
class _$CharactersSelectState implements CharactersSelectState {
  const _$CharactersSelectState({this.charactersList, this.isGrid});

  @override
  final CharactersModel charactersList;
  @override
  final bool isGrid;

  @override
  String toString() {
    return 'CharactersState.select(charactersList: $charactersList, isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharactersSelectState &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersList) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  $CharactersSelectStateCopyWith<CharactersSelectState> get copyWith =>
      _$CharactersSelectStateCopyWithImpl<CharactersSelectState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return select(charactersList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(charactersList, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(CharactersSelectState value),
    @required TResult filter(CharactersFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(CharactersSelectState value),
    TResult filter(CharactersFilterState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class CharactersSelectState implements CharactersState, ListOrGrid {
  const factory CharactersSelectState(
      {CharactersModel charactersList, bool isGrid}) = _$CharactersSelectState;

  CharactersModel get charactersList;
  bool get isGrid;
  @JsonKey(ignore: true)
  $CharactersSelectStateCopyWith<CharactersSelectState> get copyWith;
}

/// @nodoc
abstract class $CharactersFilterStateCopyWith<$Res> {
  factory $CharactersFilterStateCopyWith(CharactersFilterState value,
          $Res Function(CharactersFilterState) then) =
      _$CharactersFilterStateCopyWithImpl<$Res>;
  $Res call({List<bool> statusList, List<bool> genderList, int sort});
}

/// @nodoc
class _$CharactersFilterStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersFilterStateCopyWith<$Res> {
  _$CharactersFilterStateCopyWithImpl(
      CharactersFilterState _value, $Res Function(CharactersFilterState) _then)
      : super(_value, (v) => _then(v as CharactersFilterState));

  @override
  CharactersFilterState get _value => super._value as CharactersFilterState;

  @override
  $Res call({
    Object statusList = freezed,
    Object genderList = freezed,
    Object sort = freezed,
  }) {
    return _then(CharactersFilterState(
      statusList:
          statusList == freezed ? _value.statusList : statusList as List<bool>,
      genderList:
          genderList == freezed ? _value.genderList : genderList as List<bool>,
      sort: sort == freezed ? _value.sort : sort as int,
    ));
  }
}

@Implements(FilterCharacters)

/// @nodoc
class _$CharactersFilterState implements CharactersFilterState {
  const _$CharactersFilterState({this.statusList, this.genderList, this.sort});

  @override
  final List<bool> statusList;
  @override
  final List<bool> genderList;
  @override
  final int sort;

  @override
  String toString() {
    return 'CharactersState.filter(statusList: $statusList, genderList: $genderList, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharactersFilterState &&
            (identical(other.statusList, statusList) ||
                const DeepCollectionEquality()
                    .equals(other.statusList, statusList)) &&
            (identical(other.genderList, genderList) ||
                const DeepCollectionEquality()
                    .equals(other.genderList, genderList)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusList) ^
      const DeepCollectionEquality().hash(genderList) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  $CharactersFilterStateCopyWith<CharactersFilterState> get copyWith =>
      _$CharactersFilterStateCopyWithImpl<CharactersFilterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required
        TResult filter(List<bool> statusList, List<bool> genderList, int sort),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return filter(statusList, genderList, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult filter(List<bool> statusList, List<bool> genderList, int sort),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(statusList, genderList, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(CharactersSelectState value),
    @required TResult filter(CharactersFilterState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(filter != null);
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(CharactersSelectState value),
    TResult filter(CharactersFilterState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class CharactersFilterState
    implements CharactersState, FilterCharacters {
  const factory CharactersFilterState(
      {List<bool> statusList,
      List<bool> genderList,
      int sort}) = _$CharactersFilterState;

  List<bool> get statusList;
  List<bool> get genderList;
  int get sort;
  @JsonKey(ignore: true)
  $CharactersFilterStateCopyWith<CharactersFilterState> get copyWith;
}
