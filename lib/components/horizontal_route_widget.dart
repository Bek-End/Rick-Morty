import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePageRoute extends CupertinoPageRoute {
  Widget page;
  ProfilePageRoute({this.page})
      : super(
          builder: (BuildContext context) => page,
        );

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(
      opacity: animation,
      child: page,
    );
  }
}
