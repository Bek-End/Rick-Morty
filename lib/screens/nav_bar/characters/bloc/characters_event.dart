part of 'characters_bloc.dart';

abstract class FilterCharacter {
  List<bool> get statusList;
  List<bool> get genderList;
  int get sort;
}

@freezed
abstract class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.select() = _CharactersSelectEvent;
  @Implements(FilterCharacter)
  const factory CharactersEvent.filter(
      {List<bool> statusList, List<bool> genderList, int sort}) = _CharactersFilterEvent;
}
