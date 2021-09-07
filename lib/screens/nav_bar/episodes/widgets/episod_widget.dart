import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/bloc/episodes_bloc.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodWidgetWithoutIcon extends StatelessWidget {
  final EpisodesData episodesData;
  const EpisodWidgetWithoutIcon({@required this.episodesData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<EpisodesBloc>(context).add(EpisodesEvent.info(episodId: episodesData.id));
        },
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              episodesData.imageName,
              width: 74,
              height: 74,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Серия ${episodesData.series}".toUpperCase(),
              style: TextThemes.seriesStyle,
            ),
            Text(
              episodesData.name,
              style: TextThemes.titleStyle,
            ),
            Text(
              episodesData.premiere.toString(),
              style: TextThemes.dateStyle,
            )
          ])
        ]),
      ),
    );
  }
}
