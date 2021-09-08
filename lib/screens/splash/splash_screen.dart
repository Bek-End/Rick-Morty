import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: AppColors.primaryDark,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.asset(
            Images.mainImage,
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Positioned(
                child: Images.rickAndMorty,
                top: 54,
              ),
          Container(
            height: size.height,
            width: size.width,
            child: Stack(alignment: Alignment.topCenter, children: [
              Positioned(
                child: Images.morty2,
                bottom: 194.73,
              ),
              Positioned(
                child: Images.rick2,
                bottom: 0,
              )
            ]),
          )
        ]),
      ),
    );
  }
}
