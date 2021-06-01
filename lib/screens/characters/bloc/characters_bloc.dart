import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(_ListState());

  @override
  Stream<CharactersState> mapEventToState(CharactersEvent event) async* {
    yield* event.map(gridEvent: _gridEvent, listEvent: _listEvent);
  }

  Stream<CharactersState> _gridEvent(_GridEvent event) async* {
    yield CharactersState.gridState();
  }

  Stream<CharactersState> _listEvent(_ListEvent event) async* {
    yield CharactersState.listState();
  }
}
