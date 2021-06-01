import 'package:RickAndMorty/global_bloc/navigator_bloc.dart';
import 'package:RickAndMorty/global_bloc/navigator_events.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersWidgets {
  Widget list(Size size, BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(variables.characterCount,
                style: MyTextTheme.characterCountStyle),
            ElevatedButton(
                child: myIcons.grid,
                onPressed: () {
                  context.read<CharactersBloc>()
                    ..add(CharactersEvent.gridEvent());
                })
          ])),
      const SizedBox(height: 24),
      Container(
          height: size.height - 242,
          width: size.width,
          child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: personList()))
    ]);
  }

  List<Widget> personList() {
    List<Widget> list = [];
    for (int i = 0; i < images.avatars.length; i++) {
      list.add(listPerson(i));
      list.add(const SizedBox(height: 24));
    }
    return list;
  }

  Widget listPerson(int i) {
    return ElevatedButton(
        onPressed: () {
          navigatorBloc.mapEventToState(CharacterProfileEvent(index: i));
        },
        child: Row(children: [
          CircleAvatar(child: Image.asset(images.avatars[i]), radius: 37),
          const SizedBox(width: 18),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(variables.characterStatus[i],
                style: TextStyle(
                    height: 1.6,
                    letterSpacing: 1.5,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: i < 4 ? ColorTheme.kGreen : ColorTheme.kRed)),
            Text(variables.characterName[i], style: MyTextTheme.titleStyle),
            Text("Человек, ${variables.characterSex[i]}",
                style: MyTextTheme.subTitleStyle)
          ])
        ]));
  }

  Widget grid(Size size, BuildContext context) {
    ScrollController controller1 = ScrollController();
    return Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(variables.characterCount,
                style: MyTextTheme.characterCountStyle),
            ElevatedButton(
                child: myIcons.list,
                onPressed: () {
                  context.read<CharactersBloc>()
                    ..add(CharactersEvent.listEvent());
                  //  charactersBloc.mapEventToState(CharactersListEvent());
                })
          ])),
      const SizedBox(height: 24),
      Container(
          height: size.height - 242,
          width: size.width,
          child: GridView(
              controller: controller1,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              primary: false,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  crossAxisCount: 2,
                  childAspectRatio: 0.9),
              children: personGrid()))
    ]);
  }

  List<Widget> personGrid() {
    List<Widget> grid = [];
    for (int i = 0; i < images.avatars.length; i++) {
      grid.add(gridPerson(i));
    }
    return grid;
  }

  Widget gridPerson(int i) {
    return ElevatedButton(
        onPressed: () {
          navigatorBloc.mapEventToState(CharacterProfileEvent(index: i));
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
              flex: 5,
              child: CircleAvatar(
                  child: Image.asset(images.avatars[i],
                      fit: BoxFit.cover, width: 120, height: 122),
                  radius: 60)),
          const SizedBox(height: 18),
          Expanded(
              flex: 3,
              child: Column(children: [
                Text(variables.characterStatus[i],
                    style: TextStyle(
                        height: 1.6,
                        letterSpacing: 1.5,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: i < 4 ? ColorTheme.kGreen : ColorTheme.kRed)),
                Text(variables.characterName[i],
                    style: MyTextTheme.characterNameStyleGrid),
                Text("Человек, ${variables.characterSex[i]}",
                    style: MyTextTheme.subTitleStyle)
              ]))
        ]));
  }
}

final charactersWidgets = CharactersWidgets();
