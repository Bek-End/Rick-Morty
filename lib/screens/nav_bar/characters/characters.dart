import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/result_of_search_widget.dart';
import 'package:RickAndMorty/components/search_component.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/grid_characters_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/list_characters_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

final _textController = TextEditingController();

class CharactersScreen extends StatelessWidget {
  final CharactersModel charactersList;
  final bool isGrid;
  const CharactersScreen({this.charactersList, this.isGrid});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          toolbarHeight: 130,
          title: SearchComponent(
            controller: _textController,
            hintText: "Найти персонажа",
          ),
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: ResultOfSearchWidget(
                isGrid: isGrid,
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
