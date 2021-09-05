part of 'characters_bloc.dart';

abstract class ListOrGrid {
  CharactersModel get charactersList;
  bool get isGrid;
}

abstract class CharacterProfile {
  CharacterModel get characterInfo;
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
  @Implements(CharacterProfile)
  factory CharactersState.info({CharacterModel characterInfo}) = CharactersInfoState;
}
