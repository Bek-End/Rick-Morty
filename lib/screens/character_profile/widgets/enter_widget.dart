import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EnterWidget extends StatelessWidget {
  String myKey, value;
  EnterWidget({this.myKey, this.value});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(myKey, style: TextThemes.keyStyle),
          Text(value, style: TextThemes.valueStyle)
        ]),
        myIcons.forward
      ]),
    );
  }
}
