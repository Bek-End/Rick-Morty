import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/first_season.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/fourth_season.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/search_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/second_season.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/third_season.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

final _textController = TextEditingController();

class EpisodesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            toolbarHeight: 130,
            title: SearchWidget(
              size: size,
              controller: _textController,
              hintText: "Найти эпизод",
            ),
            elevation: 0,
            backgroundColor: ColorTheme.kDarkBlue,
            automaticallyImplyLeading: false,
            bottom: TabBar(
                indicatorWeight: 1,
                indicatorColor: ColorTheme.kWhite,
                tabs: [
                  Tab(
                    child: Text("Сезон 1".toUpperCase(),
                        style: TextThemes.dialogStyle),
                  ),
                  Tab(
                    child: Text("Сезон 2".toUpperCase(),
                        style: TextThemes.dialogStyle),
                  ),
                  Tab(
                    child: Text("Сезон 3".toUpperCase(),
                        style: TextThemes.dialogStyle),
                  ),
                  Tab(
                    child: Text("Сезон 4".toUpperCase(),
                        style: TextThemes.dialogStyle),
                  ),
                ]),
          ),
          body: TabBarView(physics: BouncingScrollPhysics(), children: [
            FirstSeasonScreen(),
            SecondSeasonScreen(),
            ThirdSeasonScreen(),
            FourthSeasonScreen(),
          ]),
        ),
      ),
    );
  }
}
