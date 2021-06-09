import 'package:RickAndMorty/screens/nav_bar/episodes/model/episod_model.dart';
import 'package:flutter/material.dart';

class EpisodesListModel {
  List<EpisodModel> episodesListModel=[];
  EpisodesListModel({@required this.episodesListModel});

  EpisodesListModel.getEpisodesList() {
    for (int i = 1; i <= 3; i++) {
      episodesListModel.add(buildEpisodModel(i));
    }
  }
}