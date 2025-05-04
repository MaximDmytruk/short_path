import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_path/bloc/api_service_cubit/api_service_cubit.dart';
import 'package:short_path/bloc/data_service_cubit/data_service_cubit.dart';


import 'package:short_path/constants/colors_app/colors_app.dart';

import 'package:short_path/repository/data_repository.dart';
import 'package:short_path/screens/home_screen/home_screen.dart';
import 'package:short_path/screens/preview_screen/preview_screen.dart';
import 'package:short_path/screens/process_screen/process_screen.dart';
import 'package:short_path/screens/result_list_screen/result_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final DataRepository repository = DataRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (BuildContext context) => ApiServiceCubit(repository: repository),
        ),
        BlocProvider(create: (BuildContext context) => DataServiceCubit()),
      ],
      child: MaterialApp(
        title: 'Short_Path',
        theme: ThemeData(scaffoldBackgroundColor: ColorsApp.backgroundColor),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ProcessScreen.routeName: (context) => ProcessScreen(),
          ResultListScreen.routeName: (context) => ResultListScreen(),
          PreviewScreen.routeName: (context) => PreviewScreen(),
        },
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
