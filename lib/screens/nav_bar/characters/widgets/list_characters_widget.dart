import 'package:RickAndMorty/data/network/models/character_model/characters_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/list_characters_item.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final CharactersListModel charactersListModel;
  const ListWidget({this.charactersListModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: ColorTheme.kDarkBlue,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: charactersListModel.charactersListModel.length,
        itemBuilder: (context, index) {
          return ListCharactersItem(
            charactersModel: charactersListModel.charactersListModel[index],
          );
        },
      ),
    );
  }
}
