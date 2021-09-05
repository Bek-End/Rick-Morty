import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/widgets/list_location_item.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class LocationWidgets extends StatelessWidget {
  final LocationsModel locationsList;
  const LocationWidgets({this.locationsList});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: ColorTheme.kDarkBlue,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: locationsList.data.length,
          itemBuilder: (context, index) {
            return LocationItem(
              locationsData: locationsList.data[index],
            );
          },
        ),
      ),
    );
  }
}
