import 'dart:async';

import 'package:RickAndMorty/screens/nav_bar/characters/models/characters_list_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  bool isGrid = true;
  CharactersListModel charactersListModel = CharactersListModel.getCharactersList();

  CharactersBloc()
      : super(
          SelectState(
            charactersListModel: CharactersListModel.getCharactersList(),
            isGrid: false,
          ),
        );

  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(select: _select);
  }

  Stream<CharactersState> _select(_SelectEvent event) async* {
    isGrid = !isGrid;
    yield CharactersState.select(
      charactersListModel: charactersListModel,
      isGrid: isGrid,
    );
  }
}
