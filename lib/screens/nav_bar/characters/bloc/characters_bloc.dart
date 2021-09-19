import 'dart:async';

import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/data/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  bool isGrid = true;
  List<bool> statusList = [false, false, false];
  List<bool> genderList = [false, false, false];
  List<int> status = [0, 1, 2];
  List<int> gender = [0, 1, 2];
  int sort = 0;
  final _repository = Repository();
  CharactersModel charactersList = CharactersModel();
  CharactersBloc() : super(CharactersLoadingState());

  @override
  Stream<CharactersState> mapEventToState(CharactersEvent event) async* {
    yield* event.map(select: _select, filter: _filter);
  }

  Stream<CharactersState> _select(_CharactersSelectEvent event) async* {
    isGrid = !isGrid;
    if (status.length != 3 || gender.length != 3 || sort != 0) {
      isGrid = !isGrid;
      charactersList = await _repository.getCharactersFilter(
        name: "",
        statusList: status,
        genderList: gender,
      );
      if (sort == 1)
        charactersList.data.sort((a, b) {
          return a.fullName.toLowerCase().compareTo(b.fullName.toLowerCase());
        });
      if (sort == 2)
        charactersList.data.sort((a, b) {
          return b.fullName.toLowerCase().compareTo(a.fullName.toLowerCase());
        });
      yield CharactersState.select(
        charactersList: charactersList,
        isGrid: isGrid,
      );
    } else if (charactersList.totalRecords == null &&
        status.length == 3 &&
        gender.length == 3 &&
        sort == 0) {
      yield CharactersState.loading();
      try {
        charactersList = await _repository.getCharacters();
        yield CharactersState.select(
          charactersList: charactersList,
          isGrid: isGrid,
        );
      } catch (e) {
        yield CharactersState.error(errorMessage: e);
      }
    } else {
      yield CharactersState.select(
        charactersList: charactersList,
        isGrid: isGrid,
      );
    }
  }

  Stream<CharactersState> _filter(_CharactersFilterEvent event) async* {
    yield CharactersState.loading();
    charactersList.totalRecords = null;
    try {
      statusList = event.statusList;
      genderList = event.genderList;
      sort = event.sort;
      status = [];
      gender = [];
      for (int i = 0; i < 3; i++) {
        if (statusList[i] == true) status.add(i);
        if (genderList[i] == true) gender.add(i);
      }
      if (status.isEmpty) status = [0, 1, 2];
      if (gender.isEmpty) gender = [0, 1, 2];

      yield CharactersState.filter(
        statusList: statusList,
        genderList: genderList,
        sort: sort,
      );
    } catch (e) {
      yield CharactersState.error(errorMessage: e);
    }
  }
}
