import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/app_cubit_logic.dart';
import 'package:travel_app/misc/pages/details_page.dart';
import 'package:travel_app/misc/pages/nav_pages/home_page.dart';
import 'package:travel_app/misc/pages/main_page.dart';
import 'package:travel_app/misc/pages/welcome_page.dart';
import 'package:travel_app/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(data: DataServices()),
          child: AppCubitLogic(),
        ));
  }
}
