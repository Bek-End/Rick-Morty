import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final String image;
  final String text;
  const SearchWidget({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(image),
        const SizedBox(height: 28),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ]),
    );
  }
}
