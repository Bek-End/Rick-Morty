import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  final Size size;
  final TextEditingController controller;
  final String hintText;
  const SearchComponent({Key key, this.size, this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 48,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: ColorTheme.kLightBlue,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(children: [
          Padding(padding: const EdgeInsets.only(left: 15), child: MyIcons.search),
          Container(
            width: size.width - 141,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              style: TextStyle(
                color: ColorTheme.kWhite,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 12),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: ColorTheme.kDirtyGrey),
              ),
              controller: controller,
            ),
          ),
          Container(
            color: ColorTheme.kWhite.withOpacity(0.1),
            width: 1,
            margin: EdgeInsets.only(right: 14),
          ),
          MyIcons.filter
        ]),
      ),
    );
  }
}
