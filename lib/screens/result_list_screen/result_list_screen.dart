import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_path/bloc/data_service_cubit/data_service_cubit.dart';

import 'package:short_path/constants/colors_app/colors_app.dart';
import 'package:short_path/models/answer.dart';
import 'package:short_path/screens/preview_screen/preview_screen.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';

class ResultListScreen extends StatefulWidget {
  static final String routeName = '/result_list_screen';

  const ResultListScreen({super.key});

  @override
  State<ResultListScreen> createState() => _ResultListScreenState();
}

class _ResultListScreenState extends State<ResultListScreen> {
  int itemCount = 0;

  @override
  void initState() {
    super.initState();
  }

  void itemOnTap({required Answer answer}) {
    Navigator.of(context).pushNamed(PreviewScreen.routeName, arguments: answer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleName: 'Result list screen'),
      body: BlocBuilder<DataServiceCubit, DataServiceState>(
        builder: (context, state) {
          itemCount = state.answers.length;
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final String name = state.answers[index].toString();

              return InkWell(
                onTap: () {
                  itemOnTap(answer: state.answers[index]);
                },
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: ColorsApp.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: ColorsApp.dividerColor);
            },
            itemCount: itemCount,
          );
        },
      ),
    );
  }
}
