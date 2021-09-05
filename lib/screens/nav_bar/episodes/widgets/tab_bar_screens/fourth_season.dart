import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/episod_widget.dart';
import 'package:flutter/material.dart';

class FourthSeasonScreen extends StatelessWidget {
  final List<EpisodesData> episodesData;
  const FourthSeasonScreen({this.episodesData});

  @override
  Widget build(BuildContext context) {
    return ListView(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      children: List.generate(
        episodesData.length,
        (index) => EpisodWidgetWithoutIcon(
          episodesData: episodesData[index],
        ),
      ),
    );
  }
}
