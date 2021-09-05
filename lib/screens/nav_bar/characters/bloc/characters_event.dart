part of 'characters_bloc.dart';

abstract class CharacterInfo {
  String get characterId;
}

@freezed
abstract class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.select() = _SelectEvent;
    const factory CharactersEvent.back() = _BackEvent;

  @Implements(CharacterInfo)
  const factory CharactersEvent.info({String characterId}) = _InfoEvent;
}
