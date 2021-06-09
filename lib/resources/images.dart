import 'package:flutter/material.dart';

class Images {
  final List<String> avatars = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
    "assets/images/image4.png",
    "assets/images/image5.png",
    "assets/images/image6.png"
  ];

  final List<String> episodes = [
    "assets/images/episod1.png",
    "assets/images/episod2.png",
    "assets/images/episod3.png"
  ];

  final List<String> locations = [
    "assets/images/location1.png",
    "assets/images/location2.png",
  ];

  final mainImage = 'assets/images/mainImage.png';
  final rick = Image.asset('assets/images/Rick.png');
  final and = Image.asset('assets/images/and.png');
  final morty = Image.asset('assets/images/Morty.png');
  final morty2 = Image.asset('assets/images/Morty2.png');
  final rick2 = Image.asset('assets/images/Rick2.png');
}

final images = Images();
