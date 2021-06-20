import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';

class EpisodModel {
  final int id;
  final String image;
  final String serie;
  final String title;
  final String date;
  final String episodInfo =
      "Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.";

  EpisodModel({
    this.id,
    this.image,
    this.title,
    this.date,
    this.serie,
  });
}

EpisodModel buildEpisodModel(int index) {
  return EpisodModel(
    id: index,
    serie: "CЕРИЯ $index",
    title: Variables.episodTitles[index - 1],
    date: Variables.episodDate[index - 1],
    image: Images.episodes[index - 1],
  );
}
