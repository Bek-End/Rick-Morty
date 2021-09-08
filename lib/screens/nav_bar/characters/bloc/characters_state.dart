part of 'characters_bloc.dart';

abstract class ListOrGrid {
  CharactersModel get charactersList;
  bool get isGrid;
}

@freezed
abstract class CharactersState with _$CharactersState {
  factory CharactersState.loading() = CharactersLoadingState;
  factory CharactersState.error({String errorMessage}) = CharactersErrorState;
  @Implements(ListOrGrid)
  const factory CharactersState.select({
    CharactersModel charactersList,
    bool isGrid,
  }) = SelectState;
}
