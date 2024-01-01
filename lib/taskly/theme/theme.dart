import 'package:flutter/material.dart';

import '../gloabelclass/color.dart';
import '../gloabelclass/fontstyle.dart';

class Mythemes {
  static final lightTheme = ThemeData(

    primaryColor: DailozColor.appcolor,
    primarySwatch: Colors.grey,
    textTheme: const TextTheme(),
    fontFamily: 'HindSiliguriRegular',
    scaffoldBackgroundColor: DailozColor.white,

    appBarTheme: AppBarTheme(
      iconTheme:  const IconThemeData(color: DailozColor.black),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: hsMedium.copyWith(
        color: DailozColor.black,
        fontSize: 16,
      ),
      color: DailozColor.transparent,
    ),
  );

  static final darkTheme = ThemeData(

    fontFamily: 'HindSiliguriRegular',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: DailozColor.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: hsMedium.copyWith(
        color: DailozColor.white,
        fontSize: 15,
      ),
      color: DailozColor.transparent,
    ),
  );
}