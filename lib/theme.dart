import 'package:flutter/material.dart';
import 'package:naxa_task_one/utilities/constants.dart';

ThemeData appThemes() {
  FontWeight fontWeight600 = FontWeight.w600;
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: kHeadlineColors,
      ),
      headline2: base.headline2.copyWith(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: kHeadlineColors,
      ),
      headline3: base.headline3.copyWith(
        fontSize: 16.0,
        color: kHeadline3Color,
      ),
      headline4: base.headline4.copyWith(
          fontSize: 18.0, color: kHeadlineColors, fontWeight: fontWeight600),
    );
  }

  final ThemeData base = ThemeData();
  return base.copyWith(
    textTheme: _textTheme(base.textTheme),
    primaryColor: Color(0xffF6F7F7),
    accentColor: Color(0xff9586A8),
    iconTheme: IconThemeData(
      color: kIconColors,
      size: 28.0,
    ),
    backgroundColor: Color(0xffF6F5F5),
  );
}
//(0xffF6F5F5)
