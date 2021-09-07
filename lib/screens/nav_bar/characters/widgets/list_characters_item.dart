import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCharactersItem extends StatelessWidget {
  final Character dataOfCharacters;
  const ListCharactersItem({this.dataOfCharacters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<CharactersBloc>(context)
              .add(CharactersEvent.info(characterId: dataOfCharacters.id));
        },
        child: Row(children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(dataOfCharacters.imageName),
          ),
          const SizedBox(width: 18),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            Text(dataOfCharacters.fullName, style: TextThemes.titleStyle),
            Row(children: [
              Text(
                dataOfCharacters.race,
                style: TextThemes.subTitleStyle,
              ),
              Text(
                dataOfCharacters.gender == 0 ? ", Мужской" : ", Женский",
                style: TextThemes.subTitleStyle,
              ),
            ])
          ])
        ]),
      ),
    );
  }
}
