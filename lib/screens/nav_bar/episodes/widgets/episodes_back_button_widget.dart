import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/bloc/episodes_bloc.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodesBackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      leadingWidth: 72,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<EpisodesBloc>(context).add(EpisodesEvent.started());
          },
          child: Container(
            height: 48,
            width: 48,
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
            decoration: BoxDecoration(
              color: ColorTheme.kLightBlue,
              shape: BoxShape.circle,
            ),
            child: MyIcons.back,
          ),
        ),
      ),
    );
  }
}
