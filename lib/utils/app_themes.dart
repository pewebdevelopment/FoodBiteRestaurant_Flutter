import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/circle_thumb_shape.dart';
import 'constants.dart';

enum AppTheme {
  LightTheme,
  DarkTheme,
}

final appThemeData = {
  AppTheme.LightTheme: ThemeData(
    brightness: Brightness.light,
    platform: TargetPlatform.iOS,
    scaffoldBackgroundColor: Colors.white,
    toggleableActiveColor: kColorPrimaryDark,
    appBarTheme: AppBarTheme(
      elevation: 1,
      color: Colors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: kColorPrimaryDark,
      ),
      actionsIconTheme: IconThemeData(
        color: kColorPrimaryDark,
      ),
      titleTextStyle: TextStyle(
        color: kColorPrimaryDark,
        fontFamily: 'JosefinSans',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: kTextStyleButton,
      subtitle1: kTextStyleSubtitle1.copyWith(color: kColorPrimaryDark),
      subtitle2: kTextStyleSubtitle2.copyWith(color: kColorPrimaryDark),
      bodyText2: kTextStyleBody2.copyWith(color: kColorPrimaryDark),
      headline6: kTextStyleHeadline6.copyWith(color: kColorPrimaryDark),
    ),
    iconTheme: IconThemeData(
      color: kColorPrimary,
    ),
    fontFamily: 'JosefinSans',
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(width: 1, color: Colors.grey[200]!),
      ),
    ),
    sliderTheme: SliderThemeData(
      thumbColor: kColorPrimary,
      thumbShape: CircleThumbShape(thumbRadius: 15),
      activeTrackColor: kColorPrimary,
      overlayColor: kColorPrimary.withOpacity(0.2),
      trackHeight: 4,
    ),
  ),
  AppTheme.DarkTheme: ThemeData(
    brightness: Brightness.dark,
    platform: TargetPlatform.iOS,
    scaffoldBackgroundColor: Color(0xff121212),
    toggleableActiveColor: kColorLavenderBlue,
    appBarTheme: AppBarTheme(
      elevation: 1,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.87),
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.87),
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'JosefinSans',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.white54,
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: kTextStyleButton.copyWith(color: Colors.white.withOpacity(0.87)),
      subtitle1:
          kTextStyleSubtitle1.copyWith(color: Colors.white.withOpacity(0.87)),
      subtitle2:
          kTextStyleSubtitle2.copyWith(color: Colors.white.withOpacity(0.87)),
      bodyText2:
          kTextStyleBody2.copyWith(color: Colors.white.withOpacity(0.87)),
      headline6:
          kTextStyleHeadline6.copyWith(color: Colors.white.withOpacity(0.87)),
    ),
    iconTheme: IconThemeData(
      color: Colors.white.withOpacity(0.87),
    ),
    fontFamily: 'JosefinSans',
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(width: 0, color: Colors.transparent),
      ),
    ),
    sliderTheme: SliderThemeData(
      thumbColor: kColorLavenderBlue,
      thumbShape: CircleThumbShape(thumbRadius: 15),
      activeTrackColor: kColorLavenderBlue,
      overlayColor: kColorLavenderBlue.withOpacity(0.2),
      trackHeight: 4,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.87)),
      ),
    ),
  ),
};
