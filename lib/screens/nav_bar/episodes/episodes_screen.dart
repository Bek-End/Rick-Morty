import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/first_season.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/fourth_season.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/search_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/second_season.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_screens/third_season.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

final _textController = TextEditingController();

class EpisodesScreen extends StatefulWidget {
  final List<List<EpisodesData>> episodesList;
  const EpisodesScreen({this.episodesList});
  @override
  _EpisodesScreenState createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  int _selectedIndex = 0;
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
                onTap: onItemTapped,
                indicatorWeight: 1,
                indicatorColor: ColorTheme.kWhite,
                tabs: [
                  Tab(
                    child: Text(
                      "Сезон 1".toUpperCase(),
                      style: TextThemes.dialogStyle,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Сезон 2".toUpperCase(),
                      style: TextThemes.dialogStyle,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Сезон 3".toUpperCase(),
                      style: TextThemes.dialogStyle,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Сезон 4".toUpperCase(),
                      style: TextThemes.dialogStyle,
                    ),
                  ),
                ]),
          ),
          body: IndexedStack(index: _selectedIndex, children: [
            FirstSeasonScreen(
              episodesData: widget.episodesList[0],
            ),
            SecondSeasonScreen(
              episodesData: widget.episodesList[1],
            ),
            ThirdSeasonScreen(
              episodesData: widget.episodesList[2],
            ),
            FourthSeasonScreen(
              episodesData: widget.episodesList[3],
            ),
          ]),
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
