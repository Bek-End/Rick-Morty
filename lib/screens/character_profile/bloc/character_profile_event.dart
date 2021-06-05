part of 'character_profile_bloc.dart';

@freezed
abstract class CharacterProfileEvent with _$CharacterProfileEvent {
  const factory CharacterProfileEvent.characterProfile() = _CharacterProfileEvent;
}