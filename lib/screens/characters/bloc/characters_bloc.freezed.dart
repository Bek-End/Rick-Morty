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
  _SelectState select({CharactersListModel charactersListModel, bool isGrid}) {
    return _SelectState(
      charactersListModel: charactersListModel,
      isGrid: isGrid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  CharactersListModel get charactersListModel;
  bool get isGrid;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult select(CharactersListModel charactersListModel, bool isGrid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(CharactersListModel charactersListModel, bool isGrid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_SelectState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CharactersStateCopyWith<CharactersState> get copyWith;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
  $Res call({CharactersListModel charactersListModel, bool isGrid});
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;

  @override
  $Res call({
    Object charactersListModel = freezed,
    Object isGrid = freezed,
  }) {
    return _then(_value.copyWith(
      charactersListModel: charactersListModel == freezed
          ? _value.charactersListModel
          : charactersListModel as CharactersListModel,
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

/// @nodoc
abstract class _$SelectStateCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$SelectStateCopyWith(
          _SelectState value, $Res Function(_SelectState) then) =
      __$SelectStateCopyWithImpl<$Res>;
  @override
  $Res call({CharactersListModel charactersListModel, bool isGrid});
}

/// @nodoc
class __$SelectStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$SelectStateCopyWith<$Res> {
  __$SelectStateCopyWithImpl(
      _SelectState _value, $Res Function(_SelectState) _then)
      : super(_value, (v) => _then(v as _SelectState));

  @override
  _SelectState get _value => super._value as _SelectState;

  @override
  $Res call({
    Object charactersListModel = freezed,
    Object isGrid = freezed,
  }) {
    return _then(_SelectState(
      charactersListModel: charactersListModel == freezed
          ? _value.charactersListModel
          : charactersListModel as CharactersListModel,
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

@Implements(ListOrGrid)

/// @nodoc
class _$_SelectState implements _SelectState {
  const _$_SelectState({this.charactersListModel, this.isGrid});

  @override
  final CharactersListModel charactersListModel;
  @override
  final bool isGrid;

  @override
  String toString() {
    return 'CharactersState.select(charactersListModel: $charactersListModel, isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectState &&
            (identical(other.charactersListModel, charactersListModel) ||
                const DeepCollectionEquality()
                    .equals(other.charactersListModel, charactersListModel)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersListModel) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$SelectStateCopyWith<_SelectState> get copyWith =>
      __$SelectStateCopyWithImpl<_SelectState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult select(CharactersListModel charactersListModel, bool isGrid),
  }) {
    assert(select != null);
    return select(charactersListModel, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult select(CharactersListModel charactersListModel, bool isGrid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(charactersListModel, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult select(_SelectState value),
  }) {
    assert(select != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult select(_SelectState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _SelectState implements CharactersState, ListOrGrid {
  const factory _SelectState(
      {CharactersListModel charactersListModel, bool isGrid}) = _$_SelectState;

  @override
  CharactersListModel get charactersListModel;
  @override
  bool get isGrid;
  @override
  @JsonKey(ignore: true)
  _$SelectStateCopyWith<_SelectState> get copyWith;
}
