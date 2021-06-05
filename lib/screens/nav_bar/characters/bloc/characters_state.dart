part of 'characters_bloc.dart';

abstract class ListOrGrid {
  CharactersListModel get charactersListModel;
  bool get isGrid;
}

@freezed
abstract class CharactersState with _$CharactersState {
  @Implements(ListOrGrid)
  const factory CharactersState.select({
    CharactersListModel charactersListModel,
    bool isGrid,
  }) = SelectState;
}
