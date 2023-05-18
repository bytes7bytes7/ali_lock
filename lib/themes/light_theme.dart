part of 'themes.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _LightColors.white,
  primaryColor: _LightColors.casal,
  highlightColor: _LightColors.brandyPunch,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w800,
      fontFamily: FontFamily.manrope,
      color: _LightColors.bottleGreen,
    ),
    displayMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.inter,
      color: _LightColors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.sfPro,
      color: _LightColors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.inter,
      color: _LightColors.bottleGreen,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sfPro,
      color: _LightColors.outerSpace,
    ),
  ),
);
