import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movies/core/theme/theme.dart';
import 'view/home/home_view.dart';

import 'core/blocObserver/bloc_observer.dart';
import 'core/dioHelper/dio_helper.dart';
import 'core/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.isDark}) : super(key: key);
  final bool? isDark;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movies',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: const HomeView(),
    );
  }
}
