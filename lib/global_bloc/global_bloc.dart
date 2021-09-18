import 'dart:async';

import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/data/models/episod_model.dar/episod_model.dart';
import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/data/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(_SplashState());
  CharacterModel characterInfo = CharacterModel();
  EpisodModel episodInfo = EpisodModel();
  LocationModel locationInfo = LocationModel();
  final Repository _repository = Repository();

  CharactersModel charactersFilterModel = CharactersModel();
  EpisodesModel episodesFilterModel = EpisodesModel();
  LocationsModel locationsFilterModel = LocationsModel();
  List<int> statusList = [0, 1, 2];
  List<int> genderList = [0, 1, 2];
  String name;

  @override
  Stream<GlobalState> mapEventToState(GlobalEvent event) async* {
    yield* event.map(
      back: _back,
      navbar: _splashToNavBar,
      characterInfo: _characterInfo,
      episodInfo: _episodInfo,
      locationInfo: _locationInfo,
      search: _search,
    );
  }

  Stream<GlobalState> _splashToNavBar(_NavbarEvent event) async* {
    await Future.delayed(Duration(seconds: 2));
    yield GlobalState.navBar();
  }

  Stream<GlobalState> _characterInfo(_CharacterInfoEvent event) async* {
    yield GlobalState.loading();
    try {
      characterInfo = await _repository.getCharacterById(event.characterId);
      yield GlobalState.characterInfo(characterInfo: characterInfo);
    } catch (e) {
      yield GlobalState.error(errorMessage: e);
    }
  }

  Stream<GlobalState> _episodInfo(_EpisodInfoEvent event) async* {
    episodInfo = await _repository.getEpisodById(event.episodId);
    yield GlobalState.episodInfo(episodInfo: episodInfo);
  }

  Stream<GlobalState> _locationInfo(_LocationInfoEvent event) async* {
    locationInfo = await _repository.getLocationById(event.locationId);
    yield GlobalState.locationInfo(locationInfo: locationInfo);
  }

  Stream<GlobalState> _back(_BackEvent event) async* {
    yield GlobalState.navBar();
  }

  Stream<GlobalState> _search(_GlobalSearchEvent event) async* {
    yield GlobalState.loading();
    try {
      switch (event.hintText) {
        case "Найти персонажа":
          charactersFilterModel = await _repository.getCharactersFilter(
              name: event.controller.text,
              statusList: statusList,
              genderList: genderList);
          yield GlobalState.search(
            hintText: event.hintText,
            model: charactersFilterModel,
            controller: event.controller,
          );
          break;
        case "Найти эпизод":
          episodesFilterModel =
              await _repository.getEpisodesFilter(name: event.controller.text);
          yield GlobalState.search(
            hintText: event.hintText,
            controller: event.controller,
            model: episodesFilterModel,
          );
          break;
        case "Найти локацию":
          locationsFilterModel = await _repository.getLocationsFilter(
              name: event.controller.text, type: name, measurements: name);
          if (locationsFilterModel.totalRecords == 0)
            locationsFilterModel = await _repository.getLocationsFilter(
                name: name, type: event.controller.text, measurements: name);
          if (locationsFilterModel.totalRecords == 0)
            locationsFilterModel = await _repository.getLocationsFilter(
                name: name, type: name, measurements: event.controller.text);
          yield GlobalState.search(
            hintText: event.hintText,
            controller: event.controller,
            model: locationsFilterModel,
          );
          break;
        default:
          break;
      }
    } catch (e) {
      yield GlobalState.error(errorMessage: e);
    }
  }
}
