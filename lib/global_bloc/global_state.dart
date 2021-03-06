part of 'global_bloc.dart';

abstract class CharacterProfile {
  CharacterModel get characterInfo;
}

abstract class EpisodeInfo {
  EpisodModel get episodInfo;
}

abstract class LocationInformation {
  LocationModel get locationInfo;
}

abstract class SearchState {
  dynamic get model;
  TextEditingController get controller;
  String get hintText;
}

@freezed
abstract class GlobalState with _$GlobalState {
  factory GlobalState.loading() = GlobalLoadingState;
  factory GlobalState.error({String errorMessage}) = GlobalErrorState;
  const factory GlobalState.splash() = _SplashState;
  const factory GlobalState.navBar() = _NavBarState;

  @Implements(CharacterProfile)
  factory GlobalState.characterInfo({CharacterModel characterInfo}) =
      CharacterInfoState;

  @Implements(EpisodeInfo)
  const factory GlobalState.episodInfo({EpisodModel episodInfo}) =
      EpisodInfoState;

  @Implements(LocationInformation)
  const factory GlobalState.locationInfo({LocationModel locationInfo}) =
      LocationInfoState;

  @Implements(SearchState)
  const factory GlobalState.search(
      {dynamic model,
      String hintText,
      TextEditingController controller}) = GlobalSearchState;
}
