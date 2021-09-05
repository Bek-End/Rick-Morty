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
  Stream<EpisodesState> mapEventToState(
    EpisodesEvent event,
  ) async* {
    if (episodesList.totalRecords == null) {
      yield EpisodesState.loading();
      try {
        episodesList = await _repository.getEpisodes();
        episodesList.data.forEach((element) {
          switch (element.season) {
            case 1:
              episodesListForTabBar[0].add(element);
              break;
            case 2:
              episodesListForTabBar[1].add(element);
              break;
            case 3:
              episodesListForTabBar[2].add(element);
              break;
            case 4:
              episodesListForTabBar[3].add(element);
              break;
          }
        });
      } catch (e) {
        yield EpisodesErrorState(errorMessage: e);
      }
    }
    event.map(started: _started, info: _info);
  }

  Stream<EpisodesState> _started(_Started event) async* {
    yield EpisodesState.initial(
      episodesList: episodesListForTabBar,
    );
  }

  Stream<EpisodesState> _info(_InfoEvent event) async* {
    episodInfo = await _repository.getEpisod(event.episodId);
    yield EpisodesState.info(episodInfo: episodInfo);
  }
}
