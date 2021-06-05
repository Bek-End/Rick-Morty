import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_profile_event.dart';
part 'character_profile_state.dart';
part 'character_profile_bloc.freezed.dart';

class CharacterProfileBloc
    extends Bloc<CharacterProfileEvent, CharacterProfileState> {
  CharacterProfileBloc() : super(_CharacterProfileState());

  @override
  Stream<CharacterProfileState> mapEventToState(
    CharacterProfileEvent event,
  ) async* {
    yield* event.maybeMap(
        characterProfile: _characterProfileStream, orElse: () {});
  }

  Stream<CharacterProfileState> _characterProfileStream(
      CharacterProfileEvent event) async* {
    yield CharacterProfileState.characterProfile();
  }
}
