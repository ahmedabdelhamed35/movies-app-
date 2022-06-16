import 'package:flutter/material.dart';
import 'package:flutter_movies/constants/palette.dart';

import '../../constants/app_colors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.mainRedColor,
    primarySwatch: Palette.primarySwatch,
    scaffoldBackgroundColor: AppColors.darkBlueColor,
    secondaryHeaderColor: AppColors.lightBlueColor,
    backgroundColor: AppColors.darkBlueColor,
    fontFamily: 'Cairo',
    textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Cairo',
          bodyColor: Colors.white,
          decorationColor: Colors.white,
          displayColor: Colors.white,
        ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
  );
}
