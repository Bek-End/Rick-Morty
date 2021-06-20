import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';

class LocationModel {
  final int id;
  final String name;
  final String category = "Мир";
  final String image;
  final String measurement = "Измерение С-137";
  final String locationInfo =
      "Это планета, на которой проживает человеческая раса, и главное место для персонажей Рика и Морти. Возраст этой Земли более 4,6 миллиардов лет, и она является четвертой планетой от своей звезды.";

  LocationModel({
    this.id,
    this.name,
    this.image,
  });
}

LocationModel buildLocationModel(int index) {
  return LocationModel(
    id: index,
    name: Variables.locationName[index - 1],
    image: Images.locations[index - 1],
  );
}
