import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridCharactersItem extends StatelessWidget {
  final Character dataOfCharacters;
  const GridCharactersItem({this.dataOfCharacters});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CharactersBloc>(context)
              .add(CharactersEvent.info(characterId: dataOfCharacters.id));
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          flex: 5,
          child: Container(
            child: Hero(
              tag: "${dataOfCharacters.imageName}",
              child: CircleAvatar(
                backgroundImage: NetworkImage(dataOfCharacters.imageName),
                radius: 60,
              ),
            ),
          ),
        ),
        Spacer(),
        Expanded(
          flex: 3,
          child: Column(children: [
            Text(
              dataOfCharacters.status == 0 ? "Живой" : "Мертвый",
              style: TextStyle(
                height: 1.6,
                letterSpacing: 1.5,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: dataOfCharacters.status == 0
                    ? ColorTheme.kGreen
                    : ColorTheme.kRed,
              ),
            ),
            Text(
              dataOfCharacters.fullName,
              style: TextThemes.characterNameStyleGrid,
            ),
            Text(
              dataOfCharacters.gender == 0 ? "Мужской" : "Женский",
              style: TextThemes.subTitleStyle,
            ),
          ]),
        ),
      ]),
    );
  }
}
