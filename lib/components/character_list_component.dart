import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterListComponent extends StatelessWidget {
  final Character charactersModel;
  const CharacterListComponent({this.charactersModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<CharactersBloc>(context)
              .add(CharactersEvent.info(characterId: charactersModel.id));
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
              child: CircleAvatar(
                radius: 37,
                child: Hero(
                  tag: "${charactersModel.imageName}",
                  child: ClipOval(
                    child: Image.network(
                      charactersModel.imageName,
                      width: 74,
                      height: 74,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 18),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(charactersModel.status == 0 ? "Живой" : "Мертвый",
                  style: TextStyle(
                      height: 1.6,
                      letterSpacing: 1.5,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: charactersModel.status == 0
                          ? ColorTheme.kGreen
                          : ColorTheme.kRed)),
              Text(charactersModel.fullName, style: TextThemes.titleStyle),
              Row(children: [
                Text(
                  charactersModel.race,
                  style: TextThemes.subTitleStyle,
                ),
                Text(
                  charactersModel.gender == 0 ? "Мужской" : "Женский",
                  style: TextThemes.subTitleStyle,
                ),
              ])
            ])
          ]),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: MyIcons.forward,
          ),
        ]),
      ),
    );
  }
}
