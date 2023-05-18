part of 'themes.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _LightColors.gin,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: _LightColors.casal,
    onPrimary: _LightColors.white,
    secondary: _LightColors.brandyPunch,
    onSecondary: _LightColors.white,
    error: _LightColors.brandyPunch,
    onError: _LightColors.white,
    background: _LightColors.white,
    onBackground: _LightColors.black,
    surface: _LightColors.white,
    onSurface: _LightColors.black,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w800,
      fontFamily: FontFamily.manrope,
      color: _LightColors.bottleGreen,
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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return _LightColors.outerSpace;
          }

          return _LightColors.casal;
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return _LightColors.nebula;
          }

          return _LightColors.white;
        },
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 14,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.inter,
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
    selectedItemColor: _LightColors.casal,
    unselectedItemColor: _LightColors.outerSpace,
    backgroundColor: _LightColors.white,
    selectedLabelStyle: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.sfPro,
      color: _LightColors.casal,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.sfPro,
      color: _LightColors.outerSpace,
    ),
  ),
);
