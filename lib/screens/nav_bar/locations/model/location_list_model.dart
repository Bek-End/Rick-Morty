import 'package:RickAndMorty/screens/nav_bar/locations/model/location_model.dart';
import 'package:flutter/material.dart';

class LocationListModel {
  List<LocationModel> locationListModel = [];
  LocationListModel({@required this.locationListModel});

  LocationListModel.getLocationsList() {
    for (int i = 1; i <= 2; i++) {
      locationListModel.add(buildLocationModel(i));
    }
  }
}
