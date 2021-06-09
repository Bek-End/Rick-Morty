import 'package:RickAndMorty/data/network/models/location_model/location_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/widgets/list_location_item.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class LocationWidgets extends StatelessWidget {
  LocationListModel locationListModel;
  LocationWidgets({this.locationListModel});

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
          itemCount: locationListModel.locationListModel.length,
          itemBuilder: (context, index) {
            return LocationItem(
              locationModel: locationListModel.locationListModel[index],
            );
          },
        ),
      ),
    );
  }
}
