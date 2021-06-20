import 'package:RickAndMorty/components/horizontal_route_component.dart';
import 'package:RickAndMorty/data/models/episod_model/episod_model.dart';
import 'package:RickAndMorty/screens/episod_info/episod_info.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EpisodWidgetWithoutIcon extends StatelessWidget {
  final EpisodModel episodModel;
  const EpisodWidgetWithoutIcon({@required this.episodModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            ProfilePageRouteComponent(
              page: EpisodInfoScreen(
                episodModel: episodModel,
              ),
            ),
          );
        },
        child: Row(children: [
          Container(
            child: Hero(tag: "${episodModel.image}", child: Image.asset(episodModel.image),),
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 16),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(episodModel.serie, style: TextThemes.seriesStyle),
            Text(episodModel.title, style: TextThemes.titleStyle),
            Text(episodModel.date, style: TextThemes.dateStyle)
          ])
        ]),
      ),
    );
  }
}
