part of 'characters_bloc.dart';

@freezed
abstract class CharactersState with _$CharactersState {
  const factory CharactersState.gridState() = _GridState;
  const factory CharactersState.listState() = _ListState;
}
