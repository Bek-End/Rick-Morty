part of 'episodes_bloc.dart';

abstract class Episod {
  List<List<EpisodesData>> get episodesList;
}

abstract class EpisodeInfo {
  EpisodModel get episodInfo;
}

@freezed
abstract class EpisodesState with _$EpisodesState {
  factory EpisodesState.loading() = EpisodesLoadingState;
  factory EpisodesState.error({String errorMessage}) = EpisodesErrorState;
  @Implements(Episod)
  const factory EpisodesState.initial({List<List<EpisodesData>> episodesList}) =
      EpisodesInitialState;
  @Implements(EpisodeInfo)
  const factory EpisodesState.info({EpisodModel episodInfo}) =
      EpisodInfoInitialState;
}
