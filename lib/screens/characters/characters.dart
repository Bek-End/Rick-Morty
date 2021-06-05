import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/characters/widgets/result_of_search_widget.dart';
import 'package:RickAndMorty/screens/characters/widgets/search_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _textController = TextEditingController();

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key key}) : super(key: key);

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
              title:
                  SearchWidget(screenSize: size, controller: _textController),
              elevation: 0,
              backgroundColor: ColorTheme.kDarkBlue,
              automaticallyImplyLeading: false,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: ResultOfSearchWidget(onPressButton: () {
                  context.read<CharactersBloc>()..add(CharactersEvent.select());
                }),
              ),
            ),
            //body: 
            ));
  }
}
