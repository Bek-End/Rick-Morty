part of 'global_bloc.dart';

abstract class CharacterInfo {
  String get characterId;
}

abstract class SearchEvent {
  String get hintText;
  TextEditingController get controller;
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
  const factory GlobalEvent.episodInfo({String episodId}) = _EpisodInfoEvent;

  @Implements(LocationInfo)
  const factory GlobalEvent.locationInfo({String locationId}) =
      _LocationInfoEvent;

  @Implements(SearchEvent)
  const factory GlobalEvent.search(
      {TextEditingController controller, String hintText}) = _GlobalSearchEvent;
}
