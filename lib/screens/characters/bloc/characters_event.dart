part of 'characters_bloc.dart';

@freezed
abstract class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.gridEvent() = _GridEvent;
  const factory CharactersEvent.listEvent() = _ListEvent;
}
