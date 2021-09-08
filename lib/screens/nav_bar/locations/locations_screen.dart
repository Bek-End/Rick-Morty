import 'package:RickAndMorty/components/search_component.dart';
import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/widgets/location_widget.dart';
import 'package:flutter/material.dart';

final _textController = TextEditingController();

class LocationsScreen extends StatelessWidget {
  final LocationsModel locationsList;
  const LocationsScreen({this.locationsList});
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
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Всего локаций: ${locationsList.totalRecords}".toUpperCase(),
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
            ),
          ),
        ),
        body: LocationWidgets(
          locationsList: locationsList,
        ),
      ),
    );
  }
}
