import 'package:RickAndMorty/screens/character_profile/bloc/character_profile_bloc.dart';
import 'package:RickAndMorty/screens/character_profile/character_profile.dart';
import 'package:RickAndMorty/screens/characters/models/characters_model.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridItem extends StatelessWidget {
  CharactersModel charactersModel;
  int index;
  GridItem({this.charactersModel, this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterProfileScreen(
              charactersModel: charactersModel,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
            child: Column(
              children: [
                Text(
                  charactersModel.status[index],
                  style: TextStyle(
                    height: 1.6,
                    letterSpacing: 1.5,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: index < 4 ? ColorTheme.kGreen : ColorTheme.kRed,
                  ),
                ),
                Text(
                  charactersModel.name,
                  style: TextThemes.characterNameStyleGrid,
                ),
                Text(charactersModel.sex, style: TextThemes.subTitleStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
