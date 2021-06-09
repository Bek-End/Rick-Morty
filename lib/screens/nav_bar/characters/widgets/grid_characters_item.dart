import 'package:RickAndMorty/components/horizontal_route_widget.dart';
import 'package:RickAndMorty/screens/character_profile/character_profile.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/models/characters_model.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class GridCharactersItem extends StatelessWidget {
  CharactersModel charactersModel;
  GridCharactersItem({this.charactersModel});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          ProfilePageRoute(page: CharacterProfileScreen(charactersModel: charactersModel,)),
        );
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          flex: 5,
          child: Container(
            child: CircleAvatar(
              radius: 60,
              child: Image.asset(charactersModel.image),
            ),
          ),
        ),
        Spacer(),
        Expanded(
          flex: 3,
          child: Column(children: [
            Text(
              charactersModel.status,
              style: TextStyle(
                height: 1.6,
                letterSpacing: 1.5,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: charactersModel.id < 5
                    ? ColorTheme.kGreen
                    : ColorTheme.kRed,
              ),
            ),
            Text(
              charactersModel.name,
              style: TextThemes.characterNameStyleGrid,
            ),
            Text(charactersModel.sex, style: TextThemes.subTitleStyle),
          ]),
        ),
      ]),
    );
  }
}
