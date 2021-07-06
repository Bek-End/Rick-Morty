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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<CharactersBloc, CharactersState>(
      listener: (context, state) {
        state.maybeMap(
          select: (_) => SelectState(),
          orElse: () {
            return Container();
          },
        );
      },
      child: BlocBuilder<CharactersBloc, CharactersState>(
          builder: (context, state) {
        if (state is SelectState) {
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
                  child: ResultOfSearchWidget(onPressButton: () {
                    context.read<CharactersBloc>()
                      ..add(CharactersEvent.select());
                  }),
                ),
              ),
              body: state.isGrid
                  ? GridCharactersWidget(
                      charactersListModel: state.charactersListModel)
                  : ListWidget(charactersListModel: state.charactersListModel),
            ),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
