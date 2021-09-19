import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharactersFilterScreen extends StatelessWidget {
  int sort;
  List<bool> statusList;
  List<bool> genderList;
  CharactersFilterScreen({Key key, this.genderList, this.statusList, this.sort})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            padding: EdgeInsets.zero,
            tooltip: "back",
            icon: MyIcons.back,
            onPressed: () {
              context.read<CharactersBloc>()..add(CharactersEvent.select());
            },
          ),
          title: Text("Фильтры", style: Theme.of(context).textTheme.headline6),
          actions: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                BlocProvider.of<CharactersBloc>(context).add(
                  CharactersEvent.filter(
                    statusList: [false, false, false],
                    genderList: [false, false, false],
                    sort: 0,
                  ),
                );
              },
              icon: MyIcons.deleteFilter,
            ),
          ]),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            children: [
              Text(
                "Сортировать".toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
              const SizedBox(height: 29),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "По алфавиту",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      sort != 1 ? sort = 1 : sort = 0;
                      context.read<CharactersBloc>()
                        ..add(
                          CharactersEvent.filter(
                            statusList: statusList,
                            sort: sort,
                            genderList: genderList,
                          ),
                        );
                    },
                    icon: SvgPicture.asset(
                      "assets/svg_icons/filter_true.svg",
                      color: sort == 1 ? AppColors.blue : AppColors.darkGray,
                    ),
                  ),
                  const SizedBox(width: 37),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      sort != 2 ? sort = 2 : sort = 0;
                      context.read<CharactersBloc>()
                        ..add(
                          CharactersEvent.filter(
                            statusList: statusList,
                            sort: sort,
                            genderList: genderList,
                          ),
                        );
                    },
                    icon: SvgPicture.asset(
                      "assets/svg_icons/filter_false.svg",
                      color: sort == 2 ? AppColors.blue : AppColors.darkGray,
                    ),
                  ),
                ]),
              ]),
              LineComponent(horizontalPadding: 0),
              Text("Статус", style: Theme.of(context).textTheme.overline),
              const SizedBox(height: 24),
              Row(children: [
                Checkbox(
                  value: statusList[0],
                  onChanged: (bool value) {
                    statusList[0] = !statusList[0];
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersEvent.filter(
                      sort: sort,
                      statusList: statusList,
                      genderList: genderList,
                    ));
                  },
                ),
                Text("Живой", style: Theme.of(context).textTheme.subtitle1),
              ]),
              Row(children: [
                Checkbox(
                  value: statusList[1],
                  onChanged: (bool value) {
                    statusList[1] = !statusList[1];
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersEvent.filter(
                      sort: sort,
                      statusList: statusList,
                      genderList: genderList,
                    ));
                  },
                ),
                Text("Мертвый", style: Theme.of(context).textTheme.subtitle1),
              ]),
              Row(children: [
                Checkbox(
                  value: statusList[2],
                  onChanged: (bool value) {
                    statusList[2] = !statusList[2];
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersEvent.filter(
                      sort: sort,
                      statusList: statusList,
                      genderList: genderList,
                    ));
                  },
                ),
                Text("Неизвестно",
                    style: Theme.of(context).textTheme.subtitle1),
              ]),
              LineComponent(horizontalPadding: 0),
              Text("Пол", style: Theme.of(context).textTheme.overline),
              const SizedBox(height: 24),
              Row(children: [
                Checkbox(
                  value: genderList[0],
                  onChanged: (bool value) {
                    genderList[0] = !genderList[0];
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersEvent.filter(
                      sort: sort,
                      statusList: statusList,
                      genderList: genderList,
                    ));
                  },
                ),
                Text("Мужской", style: Theme.of(context).textTheme.subtitle1),
              ]),
              Row(children: [
                Checkbox(
                  value: genderList[1],
                  onChanged: (bool value) {
                    genderList[1] = !genderList[1];
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersEvent.filter(
                      sort: sort,
                      statusList: statusList,
                      genderList: genderList,
                    ));
                  },
                ),
                Text("Женский", style: Theme.of(context).textTheme.subtitle1),
              ]),
              Row(children: [
                Checkbox(
                  value: genderList[2],
                  onChanged: (bool value) {
                    genderList[2] = !genderList[2];
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersEvent.filter(
                      sort: sort,
                      statusList: statusList,
                      genderList: genderList,
                    ));
                  },
                ),
                Text("Бесполый", style: Theme.of(context).textTheme.subtitle1),
              ]),
            ]),
      ),
    );
  }
}
