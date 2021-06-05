import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/character_profile/model/episod_model.dart';
import 'package:RickAndMorty/screens/character_profile/model/episodes_list_model.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EpisodesWidget extends StatelessWidget {
  EpisodesListModel episodesListModel;
  EpisodesWidget({this.episodesListModel});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Эпизоды", style: TextThemes.mainTitleStyle),
                    Text("Все эпизоды", style: TextThemes.keyStyle)
                  ])
            ] +
            episodList(episodesListModel));
  }

  List<Widget> episodList(EpisodesListModel episodesListModel) {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(const SizedBox(height: 24));
      list.add(listEpisod(episodesListModel.episodesListModel[i]));
    }
    return list;
  }

  Widget listEpisod(EpisodModel episodModel) {
    return ElevatedButton(
        onPressed: () {},
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
                child: Image.asset(episodModel.image),
                width: 74,
                height: 74,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10))),
            const SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(episodModel.serie, style: TextThemes.seriesStyle),
              Text(episodModel.title, style: TextThemes.titleStyle),
              Text(episodModel.date, style: TextThemes.dateStyle)
            ])
          ]),
          myIcons.forward
        ]));
  }
}
