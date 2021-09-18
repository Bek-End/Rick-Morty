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
  final _repository = Repository();
  CharactersModel charactersList = CharactersModel();
  CharactersBloc() : super(CharactersLoadingState());

  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(select: _select);
  }

  Stream<CharactersState> _select(_SelectEvent event) async* {
    isGrid = !isGrid;
    if (charactersList.totalRecords==null) {
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
}
