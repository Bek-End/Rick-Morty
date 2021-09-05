import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/result_of_search_widget.dart';
import 'package:RickAndMorty/components/search_component.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/grid_characters_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/list_characters_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

final _textController = TextEditingController();

class CharactersScreen extends StatelessWidget {
  final CharactersModel charactersList;
  final bool isGrid;
  const CharactersScreen({this.charactersList, this.isGrid});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          toolbarHeight: 130,
          title: SearchComponent(
            size: size,
            controller: _textController,
            hintText: "Найти персонажа",
          ),
          elevation: 0,
          backgroundColor: ColorTheme.kDarkBlue,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: ResultOfSearchWidget(
                totalRecords: charactersList.totalRecords,
                onPressButton: () {
                  context.read<CharactersBloc>()..add(CharactersEvent.select());
                }),
          ),
        ),
        body: isGrid
            ? GridCharactersWidget(
                charactersListModel: charactersList,
              )
            : ListWidget(
                charactersListModel: charactersList,
              ),
      ),
    );
  }
}
