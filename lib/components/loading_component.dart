import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.kDarkBlue,
      body: Center(
        child: Container(
          height: 25.0,
          width: 25.0,
          child: SpinKitDualRing(
            color: ColorTheme.kWhite,
            size: 100,
          ),
        ),
      ),
    );
  }
}
