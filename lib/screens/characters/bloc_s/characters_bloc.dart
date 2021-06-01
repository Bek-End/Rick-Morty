import 'package:RickAndMorty/screens/characters/bloc_s/characters_event.dart';
import 'package:RickAndMorty/screens/characters/bloc_s/characters_state.dart';
import 'package:rxdart/rxdart.dart';

class CharactersBloc {
  BehaviorSubject<CharactersStates> _subject = BehaviorSubject();
  BehaviorSubject<CharactersStates> get subject => _subject;

  void mapEventToState(CharactersEvents event) async {
    switch (event.runtimeType) {
      case CharactersListEvent:
        subject.sink.add(CharactersListState());
        break;
      case CharactersGridEvent:
        subject.sink.add(CharactersGridState());
        break;
    }
  }

  void dispose() {
    _subject?.close();
  }
}

final charactersBloc = CharactersBloc();
