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
}

/// @nodoc
// ignore: unused_element
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult select(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_SelectEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectEvent value),
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
  }) {
    assert(select != null);
    return select();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(),
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
  }) {
    assert(select != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectEvent value),
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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(CharactersLoadingState value),
    @required TResult error(CharactersErrorState value),
    @required TResult select(SelectState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
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
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
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
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
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
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
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
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
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
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    return select(charactersList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult select(CharactersModel charactersList, bool isGrid),
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
  }) {
    assert(loading != null);
    assert(error != null);
    assert(select != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(CharactersLoadingState value),
    TResult error(CharactersErrorState value),
    TResult select(SelectState value),
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
