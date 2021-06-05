import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';

class CharactersModel {
  final int id;
  final String name;
  final String status;
  final String image;
  final String sex;
  final String person;

  CharactersModel(
      {this.id, this.name, this.status, this.image, this.sex, this.person});
}

CharactersModel buildCharacterModel(int index) {
  return CharactersModel(
      id: index,
      name: variables.characterName[index],
      sex: variables.characterSex[index],
      status: variables.characterStatus[index],
      image: images.avatars[index],
      person: "Человек");
}
