part of 'episodes_bloc.dart';

abstract class Episod {
  List<List<EpisodesData>> get episodesList;
}

@freezed
abstract class EpisodesState with _$EpisodesState {
  factory EpisodesState.loading() = EpisodesLoadingState;
  factory EpisodesState.error({String errorMessage}) = EpisodesErrorState;
  @Implements(Episod)
  const factory EpisodesState.initial({List<List<EpisodesData>> episodesList}) =
      EpisodesInitialState;
}
