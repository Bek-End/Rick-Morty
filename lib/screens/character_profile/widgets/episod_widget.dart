import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/character_profile/model/episod_model.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EpisodWidget extends StatelessWidget {
  final EpisodModel episodModel;
  EpisodWidget({@required this.episodModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: () {},
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
              child: Image.asset(episodModel.image),
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
          myIcons.forward
        ]),
      ),
    );
  }
}
