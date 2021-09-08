import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 25.0,
          width: 25.0,
          child: SpinKitDualRing(
            color:Theme.of(context).accentColor,
            size: 100,
          ),
        ),
      ),
    );
  }
}
