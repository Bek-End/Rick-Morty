import 'package:RickAndMorty/components/search_component.dart';
import 'package:RickAndMorty/data/network/models/location_model/location_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/widgets/location_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

final _textController = TextEditingController();

class LocationsScreen extends StatelessWidget {
  LocationListModel locationListModel = LocationListModel.getLocationsList();
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          toolbarHeight: 130,
          title: SearchComponent(
            size: size,
            controller: _textController,
            hintText: "Найти локацию",
          ),
          elevation: 0,
          backgroundColor: ColorTheme.kDarkBlue,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Всего локаций: 200".toUpperCase(),
                  style: TextThemes.resultOfSearchStyle,
                ),
              ),
            ),
          ),
        ),
        body: LocationWidgets(
          locationListModel: locationListModel,
        ),
      ),
    );
  }
}
