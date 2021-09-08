import 'dart:async';

import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/data/models/episod_model.dar/episod_model.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
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

  @override
  Stream<GlobalState> mapEventToState(
    GlobalEvent event,
  ) async* {
    yield* event.map(
      back: _back,
      navbar: _splashToNavBar,
      characterInfo: _characterInfo,
      episodInfo: _episodInfo,
      locationInfo: _locationInfo,
    );
  }

  Stream<GlobalState> _splashToNavBar(_NavbarEvent event) async* {
    await Future.delayed(Duration(seconds: 2));
    yield GlobalState.navBar();
  }

  Stream<GlobalState> _characterInfo(_CharacterInfoEvent event) async* {
    yield GlobalState.loading();
    try {
      characterInfo = await _repository.getCharacter(event.characterId);
      yield GlobalState.characterInfo(characterInfo: characterInfo);
    } catch (e) {
      yield GlobalState.error(errorMessage: e);
    }
  }

  Stream<GlobalState> _episodInfo(_EpisodInfoEvent event) async* {
    episodInfo = await _repository.getEpisod(event.episodId);
    yield GlobalState.episodInfo(episodInfo: episodInfo);
  }

  Stream<GlobalState> _locationInfo(_LocationInfoEvent event) async* {
    locationInfo = await _repository.getLocation(event.locationId);
    yield GlobalState.locationInfo(locationInfo: locationInfo);
  }

  Stream<GlobalState> _back(_BackEvent event) async* {
    yield GlobalState.navBar();
  }
}
