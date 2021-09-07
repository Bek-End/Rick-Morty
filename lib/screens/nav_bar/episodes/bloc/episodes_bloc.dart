import 'dart:async';

import 'package:RickAndMorty/data/models/episod_model.dar/episod_model.dart';
import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/data/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';
part 'episodes_bloc.freezed.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final _repository = Repository();
  EpisodesModel episodesList = EpisodesModel();
  EpisodModel episodInfo = EpisodModel();
  List<List<EpisodesData>> episodesListForTabBar = [[], [], [], []];
  EpisodesBloc() : super(EpisodesLoadingState());

  @override
  Stream<EpisodesState> mapEventToState(EpisodesEvent event) async* {
    if (episodesListForTabBar[3].isEmpty) {
      yield EpisodesState.loading();
      try {
        for (int season = 1; season < 5; season++) {
          episodesList = await _repository.getEpisodes(season);
          episodesListForTabBar[season - 1] = episodesList.data;
        }
      } catch (e) {
        yield EpisodesErrorState(errorMessage: e);
      }
    }
    yield* event.map(started: _started, info: _info);
  }

  Stream<EpisodesState> _started(_Started event) async* {
    yield EpisodesState.initial(episodesList: episodesListForTabBar);
  }

  Stream<EpisodesState> _info(_InfoEvent event) async* {
    episodInfo = await _repository.getEpisod(event.episodId);
    yield EpisodesState.info(episodInfo: episodInfo);
  }
}
