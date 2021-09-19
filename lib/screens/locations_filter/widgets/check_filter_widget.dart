import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckFilterWidget extends StatelessWidget {
  int index;
  final List<String> list;
  final String text;
  CheckFilterWidget({this.list, this.text, this.index});

  @override
  Widget build(BuildContext context) {
    print(index);
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<LocationsBloc>(context)
              .add(LocationsEvent.check(index: index, list: list));
        },
        child: Container(
          height: 44,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(list[index], style: Theme.of(context).textTheme.subtitle1),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: AppColors.subTitle,
                    ),
              )
            ]),
            MyIcons.forward
          ]),
        ),
      ),
    );
  }
}
