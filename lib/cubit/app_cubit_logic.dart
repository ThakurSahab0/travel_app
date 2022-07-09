import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/misc/pages/details_page.dart';
import 'package:travel_app/misc/pages/main_page.dart';
import 'package:travel_app/misc/pages/nav_pages/home_page.dart';
import 'package:travel_app/misc/pages/welcome_page.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          }
          if (state is DetailState) {
            return DetailsPage();
          }
          if (state is LoadedState) {
            return MainPage();
          }
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
