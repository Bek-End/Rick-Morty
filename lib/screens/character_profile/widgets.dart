import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/theme/text_theme.dart';
import 'package:flutter/material.dart';
import '../../resources/images.dart';

class CharacteProfileWidgets {
  Widget enter(String key, String value) {
    return ElevatedButton(
        onPressed: () {},
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(key, style: MyTextTheme.keyStyle),
            Text(value, style: MyTextTheme.keyStyle)
          ]),
          myIcons.forward
        ]));
  }

  Widget episodes() {
    return Column(
        children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Эпизоды", style: MyTextTheme.mainTitleStyle),
                    Text("Все эпизоды", style: MyTextTheme.keyStyle)
                  ])
            ] +
            episodList());
  }

  List<Widget> episodList() {
    List<Widget> list = [];
    for (int i = 0; i < images.episodes.length; i++) {
      list.add(const SizedBox(height: 24));
      list.add(listEpisod(i));
    }
    return list;
  }

  Widget listEpisod(int i) {
    return ElevatedButton(
        onPressed: () {},
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
                child: Image.asset(images.episodes[i]),
                width: 74,
                height: 74,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10))),
            const SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("CЕРИЯ ${i + 1}", style: MyTextTheme.seriesStyle),
              Text(variables.episodTitles[i], style: MyTextTheme.titleStyle),
              Text(variables.episodTitles[i], style: MyTextTheme.dateStyle)
            ])
          ]),
          myIcons.forward
        ]));
  }
}

final characterProfileWidgets = CharacteProfileWidgets();
