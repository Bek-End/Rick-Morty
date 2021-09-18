// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'global_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GlobalEventTearOff {
  const _$GlobalEventTearOff();

// ignore: unused_element
  _NavbarEvent navbar() {
    return const _NavbarEvent();
  }

// ignore: unused_element
  _BackEvent back() {
    return const _BackEvent();
  }

// ignore: unused_element
  _CharacterInfoEvent characterInfo({String characterId}) {
    return _CharacterInfoEvent(
      characterId: characterId,
    );
  }

// ignore: unused_element
  _EpisodInfoEvent episodInfo({String episodId}) {
    return _EpisodInfoEvent(
      episodId: episodId,
    );
  }

// ignore: unused_element
  _LocationInfoEvent locationInfo({String locationId}) {
    return _LocationInfoEvent(
      locationId: locationId,
    );
  }

// ignore: unused_element
  _GlobalSearchEvent search(
      {TextEditingController controller, String hintText}) {
    return _GlobalSearchEvent(
      controller: controller,
      hintText: hintText,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GlobalEvent = _$GlobalEventTearOff();

/// @nodoc
mixin _$GlobalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GlobalEventCopyWith<$Res> {
  factory $GlobalEventCopyWith(
          GlobalEvent value, $Res Function(GlobalEvent) then) =
      _$GlobalEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalEventCopyWithImpl<$Res> implements $GlobalEventCopyWith<$Res> {
  _$GlobalEventCopyWithImpl(this._value, this._then);

  final GlobalEvent _value;
  // ignore: unused_field
  final $Res Function(GlobalEvent) _then;
}

/// @nodoc
abstract class _$NavbarEventCopyWith<$Res> {
  factory _$NavbarEventCopyWith(
          _NavbarEvent value, $Res Function(_NavbarEvent) then) =
      __$NavbarEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavbarEventCopyWithImpl<$Res> extends _$GlobalEventCopyWithImpl<$Res>
    implements _$NavbarEventCopyWith<$Res> {
  __$NavbarEventCopyWithImpl(
      _NavbarEvent _value, $Res Function(_NavbarEvent) _then)
      : super(_value, (v) => _then(v as _NavbarEvent));

  @override
  _NavbarEvent get _value => super._value as _NavbarEvent;
}

/// @nodoc
class _$_NavbarEvent implements _NavbarEvent {
  const _$_NavbarEvent();

  @override
  String toString() {
    return 'GlobalEvent.navbar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavbarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return navbar();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (navbar != null) {
      return navbar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return navbar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (navbar != null) {
      return navbar(this);
    }
    return orElse();
  }
}

abstract class _NavbarEvent implements GlobalEvent {
  const factory _NavbarEvent() = _$_NavbarEvent;
}

/// @nodoc
abstract class _$BackEventCopyWith<$Res> {
  factory _$BackEventCopyWith(
          _BackEvent value, $Res Function(_BackEvent) then) =
      __$BackEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackEventCopyWithImpl<$Res> extends _$GlobalEventCopyWithImpl<$Res>
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
    return 'GlobalEvent.back()';
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
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return back();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
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
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _BackEvent implements GlobalEvent {
  const factory _BackEvent() = _$_BackEvent;
}

/// @nodoc
abstract class _$CharacterInfoEventCopyWith<$Res> {
  factory _$CharacterInfoEventCopyWith(
          _CharacterInfoEvent value, $Res Function(_CharacterInfoEvent) then) =
      __$CharacterInfoEventCopyWithImpl<$Res>;
  $Res call({String characterId});
}

/// @nodoc
class __$CharacterInfoEventCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res>
    implements _$CharacterInfoEventCopyWith<$Res> {
  __$CharacterInfoEventCopyWithImpl(
      _CharacterInfoEvent _value, $Res Function(_CharacterInfoEvent) _then)
      : super(_value, (v) => _then(v as _CharacterInfoEvent));

  @override
  _CharacterInfoEvent get _value => super._value as _CharacterInfoEvent;

  @override
  $Res call({
    Object characterId = freezed,
  }) {
    return _then(_CharacterInfoEvent(
      characterId:
          characterId == freezed ? _value.characterId : characterId as String,
    ));
  }
}

@Implements(CharacterInfo)

/// @nodoc
class _$_CharacterInfoEvent implements _CharacterInfoEvent {
  const _$_CharacterInfoEvent({this.characterId});

  @override
  final String characterId;

  @override
  String toString() {
    return 'GlobalEvent.characterInfo(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterInfoEvent &&
            (identical(other.characterId, characterId) ||
                const DeepCollectionEquality()
                    .equals(other.characterId, characterId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characterId);

  @JsonKey(ignore: true)
  @override
  _$CharacterInfoEventCopyWith<_CharacterInfoEvent> get copyWith =>
      __$CharacterInfoEventCopyWithImpl<_CharacterInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return characterInfo(characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (characterInfo != null) {
      return characterInfo(characterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return characterInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (characterInfo != null) {
      return characterInfo(this);
    }
    return orElse();
  }
}

abstract class _CharacterInfoEvent implements GlobalEvent, CharacterInfo {
  const factory _CharacterInfoEvent({String characterId}) =
      _$_CharacterInfoEvent;

  String get characterId;
  @JsonKey(ignore: true)
  _$CharacterInfoEventCopyWith<_CharacterInfoEvent> get copyWith;
}

/// @nodoc
abstract class _$EpisodInfoEventCopyWith<$Res> {
  factory _$EpisodInfoEventCopyWith(
          _EpisodInfoEvent value, $Res Function(_EpisodInfoEvent) then) =
      __$EpisodInfoEventCopyWithImpl<$Res>;
  $Res call({String episodId});
}

/// @nodoc
class __$EpisodInfoEventCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res>
    implements _$EpisodInfoEventCopyWith<$Res> {
  __$EpisodInfoEventCopyWithImpl(
      _EpisodInfoEvent _value, $Res Function(_EpisodInfoEvent) _then)
      : super(_value, (v) => _then(v as _EpisodInfoEvent));

  @override
  _EpisodInfoEvent get _value => super._value as _EpisodInfoEvent;

  @override
  $Res call({
    Object episodId = freezed,
  }) {
    return _then(_EpisodInfoEvent(
      episodId: episodId == freezed ? _value.episodId : episodId as String,
    ));
  }
}

@Implements(EpisodInfo)

/// @nodoc
class _$_EpisodInfoEvent implements _EpisodInfoEvent {
  const _$_EpisodInfoEvent({this.episodId});

  @override
  final String episodId;

  @override
  String toString() {
    return 'GlobalEvent.episodInfo(episodId: $episodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodInfoEvent &&
            (identical(other.episodId, episodId) ||
                const DeepCollectionEquality()
                    .equals(other.episodId, episodId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodId);

  @JsonKey(ignore: true)
  @override
  _$EpisodInfoEventCopyWith<_EpisodInfoEvent> get copyWith =>
      __$EpisodInfoEventCopyWithImpl<_EpisodInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return episodInfo(episodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (episodInfo != null) {
      return episodInfo(episodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return episodInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (episodInfo != null) {
      return episodInfo(this);
    }
    return orElse();
  }
}

abstract class _EpisodInfoEvent implements GlobalEvent, EpisodInfo {
  const factory _EpisodInfoEvent({String episodId}) = _$_EpisodInfoEvent;

  String get episodId;
  @JsonKey(ignore: true)
  _$EpisodInfoEventCopyWith<_EpisodInfoEvent> get copyWith;
}

/// @nodoc
abstract class _$LocationInfoEventCopyWith<$Res> {
  factory _$LocationInfoEventCopyWith(
          _LocationInfoEvent value, $Res Function(_LocationInfoEvent) then) =
      __$LocationInfoEventCopyWithImpl<$Res>;
  $Res call({String locationId});
}

/// @nodoc
class __$LocationInfoEventCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res>
    implements _$LocationInfoEventCopyWith<$Res> {
  __$LocationInfoEventCopyWithImpl(
      _LocationInfoEvent _value, $Res Function(_LocationInfoEvent) _then)
      : super(_value, (v) => _then(v as _LocationInfoEvent));

  @override
  _LocationInfoEvent get _value => super._value as _LocationInfoEvent;

  @override
  $Res call({
    Object locationId = freezed,
  }) {
    return _then(_LocationInfoEvent(
      locationId:
          locationId == freezed ? _value.locationId : locationId as String,
    ));
  }
}

@Implements(LocationInfo)

/// @nodoc
class _$_LocationInfoEvent implements _LocationInfoEvent {
  const _$_LocationInfoEvent({this.locationId});

  @override
  final String locationId;

  @override
  String toString() {
    return 'GlobalEvent.locationInfo(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationInfoEvent &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationId);

  @JsonKey(ignore: true)
  @override
  _$LocationInfoEventCopyWith<_LocationInfoEvent> get copyWith =>
      __$LocationInfoEventCopyWithImpl<_LocationInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return locationInfo(locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationInfo != null) {
      return locationInfo(locationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return locationInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationInfo != null) {
      return locationInfo(this);
    }
    return orElse();
  }
}

abstract class _LocationInfoEvent implements GlobalEvent, LocationInfo {
  const factory _LocationInfoEvent({String locationId}) = _$_LocationInfoEvent;

  String get locationId;
  @JsonKey(ignore: true)
  _$LocationInfoEventCopyWith<_LocationInfoEvent> get copyWith;
}

/// @nodoc
abstract class _$GlobalSearchEventCopyWith<$Res> {
  factory _$GlobalSearchEventCopyWith(
          _GlobalSearchEvent value, $Res Function(_GlobalSearchEvent) then) =
      __$GlobalSearchEventCopyWithImpl<$Res>;
  $Res call({TextEditingController controller, String hintText});
}

/// @nodoc
class __$GlobalSearchEventCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res>
    implements _$GlobalSearchEventCopyWith<$Res> {
  __$GlobalSearchEventCopyWithImpl(
      _GlobalSearchEvent _value, $Res Function(_GlobalSearchEvent) _then)
      : super(_value, (v) => _then(v as _GlobalSearchEvent));

  @override
  _GlobalSearchEvent get _value => super._value as _GlobalSearchEvent;

  @override
  $Res call({
    Object controller = freezed,
    Object hintText = freezed,
  }) {
    return _then(_GlobalSearchEvent(
      controller: controller == freezed
          ? _value.controller
          : controller as TextEditingController,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
    ));
  }
}

@Implements(SearchEvent)

/// @nodoc
class _$_GlobalSearchEvent implements _GlobalSearchEvent {
  const _$_GlobalSearchEvent({this.controller, this.hintText});

  @override
  final TextEditingController controller;
  @override
  final String hintText;

  @override
  String toString() {
    return 'GlobalEvent.search(controller: $controller, hintText: $hintText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GlobalSearchEvent &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(hintText);

  @JsonKey(ignore: true)
  @override
  _$GlobalSearchEventCopyWith<_GlobalSearchEvent> get copyWith =>
      __$GlobalSearchEventCopyWithImpl<_GlobalSearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navbar(),
    @required TResult back(),
    @required TResult characterInfo(String characterId),
    @required TResult episodInfo(String episodId),
    @required TResult locationInfo(String locationId),
    @required TResult search(TextEditingController controller, String hintText),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return search(controller, hintText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navbar(),
    TResult back(),
    TResult characterInfo(String characterId),
    TResult episodInfo(String episodId),
    TResult locationInfo(String locationId),
    TResult search(TextEditingController controller, String hintText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(controller, hintText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navbar(_NavbarEvent value),
    @required TResult back(_BackEvent value),
    @required TResult characterInfo(_CharacterInfoEvent value),
    @required TResult episodInfo(_EpisodInfoEvent value),
    @required TResult locationInfo(_LocationInfoEvent value),
    @required TResult search(_GlobalSearchEvent value),
  }) {
    assert(navbar != null);
    assert(back != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navbar(_NavbarEvent value),
    TResult back(_BackEvent value),
    TResult characterInfo(_CharacterInfoEvent value),
    TResult episodInfo(_EpisodInfoEvent value),
    TResult locationInfo(_LocationInfoEvent value),
    TResult search(_GlobalSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _GlobalSearchEvent implements GlobalEvent, SearchEvent {
  const factory _GlobalSearchEvent(
      {TextEditingController controller,
      String hintText}) = _$_GlobalSearchEvent;

  TextEditingController get controller;
  String get hintText;
  @JsonKey(ignore: true)
  _$GlobalSearchEventCopyWith<_GlobalSearchEvent> get copyWith;
}

/// @nodoc
class _$GlobalStateTearOff {
  const _$GlobalStateTearOff();

// ignore: unused_element
  GlobalLoadingState loading() {
    return GlobalLoadingState();
  }

// ignore: unused_element
  GlobalErrorState error({String errorMessage}) {
    return GlobalErrorState(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  _SplashState splash() {
    return const _SplashState();
  }

// ignore: unused_element
  _NavBarState navBar() {
    return const _NavBarState();
  }

// ignore: unused_element
  CharacterInfoState characterInfo({CharacterModel characterInfo}) {
    return CharacterInfoState(
      characterInfo: characterInfo,
    );
  }

// ignore: unused_element
  EpisodInfoState episodInfo({EpisodModel episodInfo}) {
    return EpisodInfoState(
      episodInfo: episodInfo,
    );
  }

// ignore: unused_element
  LocationInfoState locationInfo({LocationModel locationInfo}) {
    return LocationInfoState(
      locationInfo: locationInfo,
    );
  }

// ignore: unused_element
  GlobalSearchState search(
      {dynamic model, String hintText, TextEditingController controller}) {
    return GlobalSearchState(
      model: model,
      hintText: hintText,
      controller: controller,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GlobalState = _$GlobalStateTearOff();

/// @nodoc
mixin _$GlobalState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res> implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  final GlobalState _value;
  // ignore: unused_field
  final $Res Function(GlobalState) _then;
}

/// @nodoc
abstract class $GlobalLoadingStateCopyWith<$Res> {
  factory $GlobalLoadingStateCopyWith(
          GlobalLoadingState value, $Res Function(GlobalLoadingState) then) =
      _$GlobalLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalLoadingStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements $GlobalLoadingStateCopyWith<$Res> {
  _$GlobalLoadingStateCopyWithImpl(
      GlobalLoadingState _value, $Res Function(GlobalLoadingState) _then)
      : super(_value, (v) => _then(v as GlobalLoadingState));

  @override
  GlobalLoadingState get _value => super._value as GlobalLoadingState;
}

/// @nodoc
class _$GlobalLoadingState implements GlobalLoadingState {
  _$GlobalLoadingState();

  @override
  String toString() {
    return 'GlobalState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GlobalLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
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
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GlobalLoadingState implements GlobalState {
  factory GlobalLoadingState() = _$GlobalLoadingState;
}

/// @nodoc
abstract class $GlobalErrorStateCopyWith<$Res> {
  factory $GlobalErrorStateCopyWith(
          GlobalErrorState value, $Res Function(GlobalErrorState) then) =
      _$GlobalErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$GlobalErrorStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements $GlobalErrorStateCopyWith<$Res> {
  _$GlobalErrorStateCopyWithImpl(
      GlobalErrorState _value, $Res Function(GlobalErrorState) _then)
      : super(_value, (v) => _then(v as GlobalErrorState));

  @override
  GlobalErrorState get _value => super._value as GlobalErrorState;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(GlobalErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$GlobalErrorState implements GlobalErrorState {
  _$GlobalErrorState({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GlobalState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GlobalErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $GlobalErrorStateCopyWith<GlobalErrorState> get copyWith =>
      _$GlobalErrorStateCopyWithImpl<GlobalErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
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
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GlobalErrorState implements GlobalState {
  factory GlobalErrorState({String errorMessage}) = _$GlobalErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  $GlobalErrorStateCopyWith<GlobalErrorState> get copyWith;
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$GlobalStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;
}

/// @nodoc
class _$_SplashState implements _SplashState {
  const _$_SplashState();

  @override
  String toString() {
    return 'GlobalState.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SplashState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class _SplashState implements GlobalState {
  const factory _SplashState() = _$_SplashState;
}

/// @nodoc
abstract class _$NavBarStateCopyWith<$Res> {
  factory _$NavBarStateCopyWith(
          _NavBarState value, $Res Function(_NavBarState) then) =
      __$NavBarStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavBarStateCopyWithImpl<$Res> extends _$GlobalStateCopyWithImpl<$Res>
    implements _$NavBarStateCopyWith<$Res> {
  __$NavBarStateCopyWithImpl(
      _NavBarState _value, $Res Function(_NavBarState) _then)
      : super(_value, (v) => _then(v as _NavBarState));

  @override
  _NavBarState get _value => super._value as _NavBarState;
}

/// @nodoc
class _$_NavBarState implements _NavBarState {
  const _$_NavBarState();

  @override
  String toString() {
    return 'GlobalState.navBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavBarState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return navBar();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (navBar != null) {
      return navBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return navBar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (navBar != null) {
      return navBar(this);
    }
    return orElse();
  }
}

abstract class _NavBarState implements GlobalState {
  const factory _NavBarState() = _$_NavBarState;
}

/// @nodoc
abstract class $CharacterInfoStateCopyWith<$Res> {
  factory $CharacterInfoStateCopyWith(
          CharacterInfoState value, $Res Function(CharacterInfoState) then) =
      _$CharacterInfoStateCopyWithImpl<$Res>;
  $Res call({CharacterModel characterInfo});
}

/// @nodoc
class _$CharacterInfoStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements $CharacterInfoStateCopyWith<$Res> {
  _$CharacterInfoStateCopyWithImpl(
      CharacterInfoState _value, $Res Function(CharacterInfoState) _then)
      : super(_value, (v) => _then(v as CharacterInfoState));

  @override
  CharacterInfoState get _value => super._value as CharacterInfoState;

  @override
  $Res call({
    Object characterInfo = freezed,
  }) {
    return _then(CharacterInfoState(
      characterInfo: characterInfo == freezed
          ? _value.characterInfo
          : characterInfo as CharacterModel,
    ));
  }
}

@Implements(CharacterProfile)

/// @nodoc
class _$CharacterInfoState implements CharacterInfoState {
  _$CharacterInfoState({this.characterInfo});

  @override
  final CharacterModel characterInfo;

  @override
  String toString() {
    return 'GlobalState.characterInfo(characterInfo: $characterInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharacterInfoState &&
            (identical(other.characterInfo, characterInfo) ||
                const DeepCollectionEquality()
                    .equals(other.characterInfo, characterInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characterInfo);

  @JsonKey(ignore: true)
  @override
  $CharacterInfoStateCopyWith<CharacterInfoState> get copyWith =>
      _$CharacterInfoStateCopyWithImpl<CharacterInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return characterInfo(this.characterInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (characterInfo != null) {
      return characterInfo(this.characterInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return characterInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (characterInfo != null) {
      return characterInfo(this);
    }
    return orElse();
  }
}

abstract class CharacterInfoState implements GlobalState, CharacterProfile {
  factory CharacterInfoState({CharacterModel characterInfo}) =
      _$CharacterInfoState;

  CharacterModel get characterInfo;
  @JsonKey(ignore: true)
  $CharacterInfoStateCopyWith<CharacterInfoState> get copyWith;
}

/// @nodoc
abstract class $EpisodInfoStateCopyWith<$Res> {
  factory $EpisodInfoStateCopyWith(
          EpisodInfoState value, $Res Function(EpisodInfoState) then) =
      _$EpisodInfoStateCopyWithImpl<$Res>;
  $Res call({EpisodModel episodInfo});
}

/// @nodoc
class _$EpisodInfoStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements $EpisodInfoStateCopyWith<$Res> {
  _$EpisodInfoStateCopyWithImpl(
      EpisodInfoState _value, $Res Function(EpisodInfoState) _then)
      : super(_value, (v) => _then(v as EpisodInfoState));

  @override
  EpisodInfoState get _value => super._value as EpisodInfoState;

  @override
  $Res call({
    Object episodInfo = freezed,
  }) {
    return _then(EpisodInfoState(
      episodInfo:
          episodInfo == freezed ? _value.episodInfo : episodInfo as EpisodModel,
    ));
  }
}

@Implements(EpisodeInfo)

/// @nodoc
class _$EpisodInfoState implements EpisodInfoState {
  const _$EpisodInfoState({this.episodInfo});

  @override
  final EpisodModel episodInfo;

  @override
  String toString() {
    return 'GlobalState.episodInfo(episodInfo: $episodInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodInfoState &&
            (identical(other.episodInfo, episodInfo) ||
                const DeepCollectionEquality()
                    .equals(other.episodInfo, episodInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodInfo);

  @JsonKey(ignore: true)
  @override
  $EpisodInfoStateCopyWith<EpisodInfoState> get copyWith =>
      _$EpisodInfoStateCopyWithImpl<EpisodInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return episodInfo(this.episodInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (episodInfo != null) {
      return episodInfo(this.episodInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return episodInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (episodInfo != null) {
      return episodInfo(this);
    }
    return orElse();
  }
}

abstract class EpisodInfoState implements GlobalState, EpisodeInfo {
  const factory EpisodInfoState({EpisodModel episodInfo}) = _$EpisodInfoState;

  EpisodModel get episodInfo;
  @JsonKey(ignore: true)
  $EpisodInfoStateCopyWith<EpisodInfoState> get copyWith;
}

/// @nodoc
abstract class $LocationInfoStateCopyWith<$Res> {
  factory $LocationInfoStateCopyWith(
          LocationInfoState value, $Res Function(LocationInfoState) then) =
      _$LocationInfoStateCopyWithImpl<$Res>;
  $Res call({LocationModel locationInfo});
}

/// @nodoc
class _$LocationInfoStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements $LocationInfoStateCopyWith<$Res> {
  _$LocationInfoStateCopyWithImpl(
      LocationInfoState _value, $Res Function(LocationInfoState) _then)
      : super(_value, (v) => _then(v as LocationInfoState));

  @override
  LocationInfoState get _value => super._value as LocationInfoState;

  @override
  $Res call({
    Object locationInfo = freezed,
  }) {
    return _then(LocationInfoState(
      locationInfo: locationInfo == freezed
          ? _value.locationInfo
          : locationInfo as LocationModel,
    ));
  }
}

@Implements(LocationInformation)

/// @nodoc
class _$LocationInfoState implements LocationInfoState {
  const _$LocationInfoState({this.locationInfo});

  @override
  final LocationModel locationInfo;

  @override
  String toString() {
    return 'GlobalState.locationInfo(locationInfo: $locationInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationInfoState &&
            (identical(other.locationInfo, locationInfo) ||
                const DeepCollectionEquality()
                    .equals(other.locationInfo, locationInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationInfo);

  @JsonKey(ignore: true)
  @override
  $LocationInfoStateCopyWith<LocationInfoState> get copyWith =>
      _$LocationInfoStateCopyWithImpl<LocationInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return locationInfo(this.locationInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationInfo != null) {
      return locationInfo(this.locationInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return locationInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationInfo != null) {
      return locationInfo(this);
    }
    return orElse();
  }
}

abstract class LocationInfoState implements GlobalState, LocationInformation {
  const factory LocationInfoState({LocationModel locationInfo}) =
      _$LocationInfoState;

  LocationModel get locationInfo;
  @JsonKey(ignore: true)
  $LocationInfoStateCopyWith<LocationInfoState> get copyWith;
}

/// @nodoc
abstract class $GlobalSearchStateCopyWith<$Res> {
  factory $GlobalSearchStateCopyWith(
          GlobalSearchState value, $Res Function(GlobalSearchState) then) =
      _$GlobalSearchStateCopyWithImpl<$Res>;
  $Res call({dynamic model, String hintText, TextEditingController controller});
}

/// @nodoc
class _$GlobalSearchStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements $GlobalSearchStateCopyWith<$Res> {
  _$GlobalSearchStateCopyWithImpl(
      GlobalSearchState _value, $Res Function(GlobalSearchState) _then)
      : super(_value, (v) => _then(v as GlobalSearchState));

  @override
  GlobalSearchState get _value => super._value as GlobalSearchState;

  @override
  $Res call({
    Object model = freezed,
    Object hintText = freezed,
    Object controller = freezed,
  }) {
    return _then(GlobalSearchState(
      model: model == freezed ? _value.model : model as dynamic,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      controller: controller == freezed
          ? _value.controller
          : controller as TextEditingController,
    ));
  }
}

@Implements(SearchState)

/// @nodoc
class _$GlobalSearchState implements GlobalSearchState {
  const _$GlobalSearchState({this.model, this.hintText, this.controller});

  @override
  final dynamic model;
  @override
  final String hintText;
  @override
  final TextEditingController controller;

  @override
  String toString() {
    return 'GlobalState.search(model: $model, hintText: $hintText, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GlobalSearchState &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(controller);

  @JsonKey(ignore: true)
  @override
  $GlobalSearchStateCopyWith<GlobalSearchState> get copyWith =>
      _$GlobalSearchStateCopyWithImpl<GlobalSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult splash(),
    @required TResult navBar(),
    @required TResult characterInfo(CharacterModel characterInfo),
    @required TResult episodInfo(EpisodModel episodInfo),
    @required TResult locationInfo(LocationModel locationInfo),
    @required
        TResult search(
            dynamic model, String hintText, TextEditingController controller),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return search(model, hintText, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult error(String errorMessage),
    TResult splash(),
    TResult navBar(),
    TResult characterInfo(CharacterModel characterInfo),
    TResult episodInfo(EpisodModel episodInfo),
    TResult locationInfo(LocationModel locationInfo),
    TResult search(
        dynamic model, String hintText, TextEditingController controller),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(model, hintText, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(GlobalLoadingState value),
    @required TResult error(GlobalErrorState value),
    @required TResult splash(_SplashState value),
    @required TResult navBar(_NavBarState value),
    @required TResult characterInfo(CharacterInfoState value),
    @required TResult episodInfo(EpisodInfoState value),
    @required TResult locationInfo(LocationInfoState value),
    @required TResult search(GlobalSearchState value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(splash != null);
    assert(navBar != null);
    assert(characterInfo != null);
    assert(episodInfo != null);
    assert(locationInfo != null);
    assert(search != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(GlobalLoadingState value),
    TResult error(GlobalErrorState value),
    TResult splash(_SplashState value),
    TResult navBar(_NavBarState value),
    TResult characterInfo(CharacterInfoState value),
    TResult episodInfo(EpisodInfoState value),
    TResult locationInfo(LocationInfoState value),
    TResult search(GlobalSearchState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class GlobalSearchState implements GlobalState, SearchState {
  const factory GlobalSearchState(
      {dynamic model,
      String hintText,
      TextEditingController controller}) = _$GlobalSearchState;

  dynamic get model;
  String get hintText;
  TextEditingController get controller;
  @JsonKey(ignore: true)
  $GlobalSearchStateCopyWith<GlobalSearchState> get copyWith;
}
