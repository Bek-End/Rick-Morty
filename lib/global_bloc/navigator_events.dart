import 'package:flutter/material.dart';

abstract class NavigatorEvents {}

class InitialMainScreenEvent extends NavigatorEvents {
  final GlobalKey<NavigatorState> navigatorKey;
  InitialMainScreenEvent({this.navigatorKey});
}

class CharacterProfileEvent extends NavigatorEvents {
  final int index;
  CharacterProfileEvent({this.index});
}

class NavigatorPopEvent extends NavigatorEvents {}
