import 'package:RickAndMorty/components/horizontal_route_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/models/characters_model.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final CharactersModel charactersModel;
  const ListItem({this.charactersModel});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              ProfilePageRoute(charactersModel: charactersModel),
            );
          },
          child: Row(children: [
            Container(
              child: CircleAvatar(
                radius: 37,
                child: Image.asset(charactersModel.image),
              ),
            ),
            const SizedBox(width: 18),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(charactersModel.status,
                  style: TextStyle(
                      height: 1.6,
                      letterSpacing: 1.5,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: charactersModel.id < 5
                          ? ColorTheme.kGreen
                          : ColorTheme.kRed)),
              Text(charactersModel.name, style: TextThemes.titleStyle),
              Text(
                "Человек, ${charactersModel.sex}",
                style: TextThemes.subTitleStyle,
              )
            ])
          ]),
        ),
      ),
    ]);
  }
}
