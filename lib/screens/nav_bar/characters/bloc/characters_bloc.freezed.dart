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
  _SelectEvent select() {
    return const _SelectEvent();
  }

// ignore: unused_element
  _BackEvent back() {
    return const _BackEvent();
  }

// ignore: unused_element
  _InfoEvent info({String characterId}) {
    return _InfoEvent(
      characterId: characterId,
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
    @required TResult back(),
    @required TResult info(String characterId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult back(),
    TResult info(String characterId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_SelectEvent value),
    @required TResult back(_BackEvent value),
    @required TResult info(_InfoEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectEvent value),
    TResult back(_BackEvent value),
    TResult info(_InfoEvent value),
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
abstract class _$SelectEventCopyWith<$Res> {
  factory _$SelectEventCopyWith(
          _SelectEvent value, $Res Function(_SelectEvent) then) =
      __$SelectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$SelectEventCopyWith<$Res> {
  __$SelectEventCopyWithImpl(
      _SelectEvent _value, $Res Function(_SelectEvent) _then)
      : super(_value, (v) => _then(v as _SelectEvent));

  @override
  _SelectEvent get _value => super._value as _SelectEvent;
}

/// @nodoc
class _$_SelectEvent implements _SelectEvent {
  const _$_SelectEvent();

  @override
  String toString() {
    return 'CharactersEvent.select()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
    @required TResult back(),
    @required TResult info(String characterId),
  }) {
    assert(select != null);
    assert(back != null);
    assert(info != null);
    return select();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult back(),
    TResult info(String characterId),
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
    @required TResult select(_SelectEvent value),
    @required TResult back(_BackEvent value),
    @required TResult info(_InfoEvent value),
  }) {
    assert(select != null);
    assert(back != null);
    assert(info != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectEvent value),
    TResult back(_BackEvent value),
    TResult info(_InfoEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _SelectEvent implements CharactersEvent {
  const factory _SelectEvent() = _$_SelectEvent;
}

/// @nodoc
abstract class _$BackEventCopyWith<$Res> {
  factory _$BackEventCopyWith(
          _BackEvent value, $Res Function(_BackEvent) then) =
      __$BackEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackEventCopyWithImpl<$Res> extends _$CharactersEventCopyWithImpl<$Res>
    implements _$BackEventCopyWith<$Res> {
  __$BackEventCopyWithImpl(_BackEvent _value, $Res Function(_BackEvent) _then)
      : super(_value, (v) => _then(v as _BackEvent));

  @override
  _BackEvent get _value => super._value as _BackEvent;
}

/// @nodoc
class _$_BackEvent implements _BackEvent {
  const _$_BackEvent();

  @override
  String toString() {
    return 'CharactersEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
    @required TResult back(),
    @required TResult info(String characterId),
  }) {
    assert(select != null);
    assert(back != null);
    assert(info != null);
    return back();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult back(),
    TResult info(String characterId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_SelectEvent value),
    @required TResult back(_BackEvent value),
    @required TResult info(_InfoEvent value),
  }) {
    assert(select != null);
    assert(back != null);
    assert(info != null);
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectEvent value),
    TResult back(_BackEvent value),
    TResult info(_InfoEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _BackEvent implements CharactersEvent {
  const factory _BackEvent() = _$_BackEvent;
}

/// @nodoc
abstract class _$InfoEventCopyWith<$Res> {
  factory _$InfoEventCopyWith(
          _InfoEvent value, $Res Function(_InfoEvent) then) =
      __$InfoEventCopyWithImpl<$Res>;
  $Res call({String characterId});
}

/// @nodoc
class __$InfoEventCopyWithImpl<$Res> extends _$CharactersEventCopyWithImpl<$Res>
    implements _$InfoEventCopyWith<$Res> {
  __$InfoEventCopyWithImpl(_InfoEvent _value, $Res Function(_InfoEvent) _then)
      : super(_value, (v) => _then(v as _InfoEvent));

  @override
  _InfoEvent get _value => super._value as _InfoEvent;

  @override
  $Res call({
    Object characterId = freezed,
  }) {
    return _then(_InfoEvent(
      characterId:
          characterId == freezed ? _value.characterId : characterId as String,
    ));
  }
}

@Implements(CharacterInfo)

/// @nodoc
class _$_InfoEvent implements _InfoEvent {
  const _$_InfoEvent({this.characterId});

  @override
  final String characterId;

  @override
  String toString() {
    return 'CharactersEvent.info(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoEvent &&
            (identical(other.characterId, characterId) ||
                const DeepCollectionEquality()
                    .equals(other.characterId, characterId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characterId);

  @JsonKey(ignore: true)
  @override
  _$InfoEventCopyWith<_InfoEvent> get copyWith =>
      __$InfoEventCopyWithImpl<_InfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
    @required TResult back(),
    @required TResult info(String characterId),
  }) {
    assert(select != null);
    assert(back != null);
    assert(info != null);
    return info(characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    TResult back(),
    TResult info(String characterId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(characterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_SelectEvent value),
    @required TResult back(_BackEvent value),
    @required TResult info(_InfoEvent value),
  }) {
    assert(select != null);
    assert(back != null);
    assert(info != null);
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectEvent value),
    TResult back(_BackEvent value),
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

abstract class _InfoEvent implements CharactersEvent, CharacterInfo {
  const factory _InfoEvent({String characterId}) = _$_InfoEvent;

  String get characterId;
  @JsonKey(ignore: true)
  _$InfoEventCopyWith<_InfoEvent> get copyWith;
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
  SelectState select({CharactersModel charactersList, bool isGrid}) {
    return SelectState(
      charactersList: charactersList,
      isGrid: isGrid,
    );
  }

// ignore: unused_element
  CharactersInfoState info({CharacterModel characterInfo}) {
    return CharactersInfoState(
      characterInfo: characterInfo,
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
    @required TResult info(CharacterModel characterInfo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult info(CharacterModel characterInfo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(SelectState value),
    @required TResult info(CharactersInfoState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
    TResult info(CharactersInfoState value),
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
    @required TResult info(CharacterModel characterInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult info(CharacterModel characterInfo),
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
    @required TResult select(SelectState value),
    @required TResult info(CharactersInfoState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
    TResult info(CharactersInfoState value),
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
    @required TResult info(CharacterModel characterInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult info(CharacterModel characterInfo),
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
    @required TResult select(SelectState value),
    @required TResult info(CharactersInfoState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
    TResult info(CharactersInfoState value),
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
abstract class $SelectStateCopyWith<$Res> {
  factory $SelectStateCopyWith(
          SelectState value, $Res Function(SelectState) then) =
      _$SelectStateCopyWithImpl<$Res>;
  $Res call({CharactersModel charactersList, bool isGrid});
}

/// @nodoc
class _$SelectStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $SelectStateCopyWith<$Res> {
  _$SelectStateCopyWithImpl(
      SelectState _value, $Res Function(SelectState) _then)
      : super(_value, (v) => _then(v as SelectState));

  @override
  SelectState get _value => super._value as SelectState;

  @override
  $Res call({
    Object charactersList = freezed,
    Object isGrid = freezed,
  }) {
    return _then(SelectState(
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList as CharactersModel,
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

@Implements(ListOrGrid)

/// @nodoc
class _$SelectState implements SelectState {
  const _$SelectState({this.charactersList, this.isGrid});

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
        (other is SelectState &&
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
  $SelectStateCopyWith<SelectState> get copyWith =>
      _$SelectStateCopyWithImpl<SelectState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required TResult info(CharacterModel characterInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return select(charactersList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult info(CharacterModel characterInfo),
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
    @required TResult select(SelectState value),
    @required TResult info(CharactersInfoState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
    TResult info(CharactersInfoState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class SelectState implements CharactersState, ListOrGrid {
  const factory SelectState({CharactersModel charactersList, bool isGrid}) =
      _$SelectState;

  CharactersModel get charactersList;
  bool get isGrid;
  @JsonKey(ignore: true)
  $SelectStateCopyWith<SelectState> get copyWith;
}

/// @nodoc
abstract class $CharactersInfoStateCopyWith<$Res> {
  factory $CharactersInfoStateCopyWith(
          CharactersInfoState value, $Res Function(CharactersInfoState) then) =
      _$CharactersInfoStateCopyWithImpl<$Res>;
  $Res call({CharacterModel characterInfo});
}

/// @nodoc
class _$CharactersInfoStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersInfoStateCopyWith<$Res> {
  _$CharactersInfoStateCopyWithImpl(
      CharactersInfoState _value, $Res Function(CharactersInfoState) _then)
      : super(_value, (v) => _then(v as CharactersInfoState));

  @override
  CharactersInfoState get _value => super._value as CharactersInfoState;

  @override
  $Res call({
    Object characterInfo = freezed,
  }) {
    return _then(CharactersInfoState(
      characterInfo: characterInfo == freezed
          ? _value.characterInfo
          : characterInfo as CharacterModel,
    ));
  }
}

@Implements(CharacterProfile)

/// @nodoc
class _$CharactersInfoState implements CharactersInfoState {
  _$CharactersInfoState({this.characterInfo});

  @override
  final CharacterModel characterInfo;

  @override
  String toString() {
    return 'CharactersState.info(characterInfo: $characterInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharactersInfoState &&
            (identical(other.characterInfo, characterInfo) ||
                const DeepCollectionEquality()
                    .equals(other.characterInfo, characterInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characterInfo);

  @JsonKey(ignore: true)
  @override
  $CharactersInfoStateCopyWith<CharactersInfoState> get copyWith =>
      _$CharactersInfoStateCopyWithImpl<CharactersInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult select(CharactersModel charactersList, bool isGrid),
    @required TResult info(CharacterModel characterInfo),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return info(characterInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    TResult info(CharacterModel characterInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(characterInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(SelectState value),
    @required TResult info(CharactersInfoState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    assert(info != null);
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
    TResult info(CharactersInfoState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class CharactersInfoState
    implements CharactersState, CharacterProfile {
  factory CharactersInfoState({CharacterModel characterInfo}) =
      _$CharactersInfoState;

  CharacterModel get characterInfo;
  @JsonKey(ignore: true)
  $CharactersInfoStateCopyWith<CharactersInfoState> get copyWith;
}
