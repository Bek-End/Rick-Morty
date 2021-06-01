import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/characters/bloc_s/characters_bloc.dart';
import 'package:RickAndMorty/screens/characters/bloc_s/characters_state.dart';
import 'package:RickAndMorty/screens/characters/widgets.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharactersScreen extends StatefulWidget {
  static final routeName = "/CharactersScreen";
  @override
  _CharactersScreenState createState() => _CharactersScreenState();
}

final _controller = TextEditingController();

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
                color: ColorTheme.kDarkBlue,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                          height: 48,
                          margin: const EdgeInsets.only(top: 54, bottom: 24),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              color: ColorTheme.kLightBlue,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: myIcons.search),
                            Container(
                                width: size.width - 141,
                                height: 48,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.only(bottom: 12),
                                        border: InputBorder.none,
                                        hintText: "Найти персонажа",
                                        hintStyle: TextStyle(
                                            color: ColorTheme.kDirtyGrey)),
                                    controller: _controller)),
                            Container(
                                color: ColorTheme.kWhite.withOpacity(0.1),
                                width: 1,
                                margin: const EdgeInsets.only(right: 14)),
                            myIcons.filter
                          ]))),
                  StreamBuilder(
                      stream: charactersBloc.subject.stream,
                      builder:
                          (context, AsyncSnapshot<CharactersStates> snapshot) {
                        if (snapshot.data.runtimeType == CharactersGridState) {
                          return charactersWidgets.grid(size);
                        } else if (snapshot.data.runtimeType ==
                            CharactersListState) {
                          return charactersWidgets.list(size);
                        } else {
                          return Container();
                        }
                      })
                ]))));
  }
}
