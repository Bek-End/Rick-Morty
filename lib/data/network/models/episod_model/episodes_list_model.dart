import 'package:RickAndMorty/data/network/models/episod_model/episod_model.dart';
import 'package:flutter/material.dart';

class EpisodesListModel {
  List<EpisodModel> episodesListModel=[];
  EpisodesListModel({@required this.episodesListModel});

  EpisodesListModel.getEpisodesList() {
    for (int i = 1; i <= 7; i++) {
      episodesListModel.add(buildEpisodModel(i));
    }
  }
}