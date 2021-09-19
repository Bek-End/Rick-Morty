part of 'characters_bloc.dart';

abstract class ListOrGrid {
  CharactersModel get charactersList;
  bool get isGrid;
}

abstract class FilterCharacters {
  List<bool> get statusList;
  List<bool> get genderList;
  int get sort;
}

@freezed
abstract class CharactersState with _$CharactersState {
  factory CharactersState.loading() = CharactersLoadingState;
  factory CharactersState.error({String errorMessage}) = CharactersErrorState;
  @Implements(ListOrGrid)
  const factory CharactersState.select(
      {CharactersModel charactersList, bool isGrid}) = CharactersSelectState;

  @Implements(FilterCharacters)
  const factory CharactersState.filter(
      {List<bool> statusList,
      List<bool> genderList,
      int sort}) = CharactersFilterState;
}
