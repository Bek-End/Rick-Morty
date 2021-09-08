import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersBackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<CharactersBloc>(context)
                .add(CharactersEvent.back());
          },
          child: MyIcons.back,
        ),
      ),
    );
  }
}
