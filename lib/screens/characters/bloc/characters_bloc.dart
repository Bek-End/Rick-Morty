import 'dart:async';

import 'package:RickAndMorty/screens/characters/models/characters_list_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  bool isGrid = false;
  CharactersListModel charactersListModel;

  CharactersBloc()
      : super(_SelectState(
            charactersListModel: CharactersListModel.getCharactersList(), isGrid: false));

  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.maybeMap(select: _select, orElse: () {});
  }

  Stream<CharactersState> _select(_SelectEvent event) async* {
    isGrid = !isGrid;
    yield CharactersState.select(
        charactersListModel: charactersListModel, isGrid: isGrid);
  }
}
