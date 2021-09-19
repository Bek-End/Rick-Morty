import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/data/data_base/theme_types.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/nav_bar/settings/widgets/dialog_widget.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
import 'package:RickAndMorty/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 72,
        toolbarHeight: 100,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(
          "Настройки",
          style: Theme.of(context).textTheme.headline6,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Внешний вид".toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => DialogWidget(),
              );
            },
            child: ListTile(
              leading: MyIcons.theme,
              title: Text(
                "Темная тема",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              subtitle: Text(
                  themeName(
                    Provider.of<ThemeNotifier>(context).getThemeType(),
                  ),
                  style: Theme.of(context).textTheme.bodyText2),
              trailing: MyIcons.forward,
            ),
          ),
          LineComponent(
            horizontalPadding: 0,
          ),
          Text(
            "О приложении".toUpperCase(),
            style: Theme.of(context).textTheme.overline,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            Variables.appInfo,
            style: AppTextStyles.infoValue.copyWith(
              color: Theme.of(context).accentColor,
            ),
          ),
          LineComponent(
            horizontalPadding: 0,
          ),
          Text(
            "Версия приложения".toUpperCase(),
            style: Theme.of(context).textTheme.overline,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Rick & Morty  v1.0.0",
            style: AppTextStyles.infoValue.copyWith(
              color: Theme.of(context).accentColor,
            ),
          ),
        ]),
      ),
    );
  }
}
