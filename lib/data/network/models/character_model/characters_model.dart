import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';

class CharactersModel {
  final int id;
  final String name;
  final String status;
  final String image;
  final String sex;
  final String person;
  final String characterNature =
      "Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.";

  CharactersModel({
    this.id,
    this.name,
    this.status,
    this.image,
    this.sex,
    this.person,
  });
}

CharactersModel buildCharacterModel(int index) {
  return CharactersModel(
    id: index,
    name: variables.characterName[index - 1],
    sex: variables.characterSex[index - 1],
    status: variables.characterStatus[index - 1],
    image: images.avatars[index - 1],
    person: "Человек",
  );
}
