part of 'global_bloc.dart';

abstract class CharacterInfo {
  String get characterId;
}

abstract class EpisodInfo {
  String get episodId;
}

abstract class LocationInfo {
  String get locationId;
}

@freezed
abstract class GlobalEvent with _$GlobalEvent {
  const factory GlobalEvent.navbar() = _NavbarEvent;
      const factory GlobalEvent.back() = _BackEvent;


  @Implements(CharacterInfo)
  const factory GlobalEvent.characterInfo({String characterId}) =
      _CharacterInfoEvent;

  @Implements(EpisodInfo)
  const factory GlobalEvent.episodInfo({String episodId}) =
      _EpisodInfoEvent;

  @Implements(LocationInfo)
  const factory GlobalEvent.locationInfo({String locationId}) =
      _LocationInfoEvent;
}
