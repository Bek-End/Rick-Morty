import 'package:RickAndMorty/data/network/models/episod_model/episodes_list_model.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/episod_widget.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EpisodesWidget extends StatelessWidget {
  EpisodesListModel episodesListModel;
  EpisodesWidget({this.episodesListModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Эпизоды", style: TextThemes.mainTitleStyle),
                    Text("Все эпизоды", style: TextThemes.keyStyle)
                  ])
            ] +
            List.generate(
              3,
              (i) => EpisodWidget(
                episodModel: episodesListModel.episodesListModel[i],
              ),
            ),
      ),
    );
  }
}
