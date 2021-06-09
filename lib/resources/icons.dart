import 'package:flutter_svg/svg.dart';

class MyIcons {
  final list = SvgPicture.asset("assets/svg_icons/List.svg");
  final grid = SvgPicture.asset("assets/svg_icons/Grid.svg");
  final filter = SvgPicture.asset("assets/svg_icons/Filter.svg");
  final search = SvgPicture.asset("assets/svg_icons/Search.svg");
  final back = SvgPicture.asset("assets/svg_icons/back.svg");
  final forward = SvgPicture.asset("assets/svg_icons/forward.svg");
  final theme = SvgPicture.asset("assets/svg_icons/theme.svg");

  final List navBar = [
    "assets/svg_icons/Персонажи.svg",
    "assets/svg_icons/Локацииии.svg",
    "assets/svg_icons/Эпизоды.svg",
    "assets/svg_icons/Настройки.svg"
  ];
}

final myIcons = MyIcons();
