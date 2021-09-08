import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/episod_widget.dart';
import 'package:flutter/material.dart';

class EpisodesWidget extends StatelessWidget {
  final List<Episode> episodesListModel;
  const EpisodesWidget({this.episodesListModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Эпизоды", style: Theme.of(context).textTheme.headline6),
                    Text("Все эпизоды", style: Theme.of(context).textTheme.caption)
                  ]),
              const SizedBox(
                height: 12,
              )
            ] +
            List.generate(
              episodesListModel.length,
              (index) => EpisodWidgetWithIcon(
                episodModel: episodesListModel[index],
              ),
            ),
      ),
    );
  }
}
