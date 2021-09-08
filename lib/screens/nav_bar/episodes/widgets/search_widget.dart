import 'package:RickAndMorty/resources/icons.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final Size size;
  final TextEditingController controller;
  final String hintText;
  const SearchWidget({this.size, this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 48,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(children: [
          Padding(padding: EdgeInsets.only(left: 15), child: MyIcons.search),
          Container(
            width: size.width - 100,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 12),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                    color: Theme.of(context).appBarTheme.iconTheme.color),
              ),
              controller: controller,
            ),
          ),
        ]),
      ),
    );
  }
}
