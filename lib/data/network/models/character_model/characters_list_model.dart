import 'package:RickAndMorty/data/network/models/character_model/characters_model.dart';
import 'package:flutter/cupertino.dart';

class CharactersListModel {
  List<CharactersModel> charactersListModel = [];
  CharactersListModel({@required this.charactersListModel});

  CharactersListModel.getCharactersList() {
    for (int i = 1; i <= 6; i++) {
      charactersListModel.add(buildCharacterModel(i));
    }
  }
}
