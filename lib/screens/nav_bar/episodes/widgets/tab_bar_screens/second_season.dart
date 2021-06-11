import 'package:RickAndMorty/data/network/models/episod_model/episodes_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/episod_widget.dart';
import 'package:flutter/material.dart';

class SecondSeasonScreen extends StatelessWidget {
  final EpisodesListModel episodesListModel =EpisodesListModel.getEpisodesList();

  @override
  Widget build(BuildContext context) {
    return ListView(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      children: List.generate(
        7,
        (i) => EpisodWidgetWithoutIcon(
          episodModel: episodesListModel.episodesListModel[i],
        ),
      ),
    );
  }
}
