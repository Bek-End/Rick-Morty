import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';

class EpisodModel {
  final int id;
  final String image;
  final String serie;
  final String title;
  final String date;

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
    title: variables.episodTitles[index - 1],
    date: variables.episodDate[index - 1],
    image: images.episodes[index - 1],
  );
}
