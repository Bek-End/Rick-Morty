import 'package:RickAndMorty/screens/character_profile/character_profile.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/models/characters_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePageRoute extends CupertinoPageRoute {
  CharactersModel charactersModel;
  ProfilePageRoute({this.charactersModel})
      : super(
          builder: (BuildContext context) =>
              new CharacterProfileScreen(charactersModel: charactersModel),
        );

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(
      opacity: animation,
      child: new CharacterProfileScreen(charactersModel: charactersModel),
    );
  }
}
