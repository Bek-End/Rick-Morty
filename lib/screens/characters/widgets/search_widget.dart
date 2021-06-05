import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final Size screenSize;
  final TextEditingController controller;

  const SearchWidget({Key key, this.screenSize, this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 48,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: ColorTheme.kLightBlue,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.search,
                color: ColorTheme.kDirtyGrey,
              ),
            ),
            Container(
                width: screenSize.width - 141,
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 12),
                      border: InputBorder.none,
                      hintText: "Найти персонажа",
                      hintStyle: TextStyle(color: ColorTheme.kDirtyGrey)),
                  controller: controller,
                )),
            Container(
                color: ColorTheme.kWhite.withOpacity(0.1),
                width: 1,
                margin: EdgeInsets.only(right: 14)),
            myIcons.filter
          ],
        ),
      ),
    );
  }
}
