import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/list_characters_item.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final CharactersModel charactersListModel;
  const ListWidget({this.charactersListModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: ColorTheme.kDarkBlue,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: charactersListModel.data.length,
        itemBuilder: (context, index) {
          return ListCharactersItem(
            dataOfCharacters: charactersListModel.data[index],
          );
        },
      ),
    );
  }
}
