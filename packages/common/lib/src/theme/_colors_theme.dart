part of 'theme.dart';

abstract class _ExpenseTrackerColors {
  static const Color indigo = Color(0xff33009A);
  static const Color blueGrey = Color(0xffE4E6F2);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);

  static const Color successGreen = Color(0xff0CCA6F);
  static const Color red = Color(0xffDB0F27);

  static const Color background = Color(0xfff5f5f5);

  static const Color border = Color(0xffD9D9D9);
  static const Color divider = Color(0xffB3B3B3);
  static const Color transparent = Color(0x00000000);

}

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: _ExpenseTrackerColors.indigo,
  onPrimary: _ExpenseTrackerColors.white,
  secondary: _ExpenseTrackerColors.blueGrey,
  onSecondary: _ExpenseTrackerColors.white,
  tertiaryContainer: _ExpenseTrackerColors.background,
  onTertiaryContainer: _ExpenseTrackerColors.background,
  error: _ExpenseTrackerColors.red,
  onError: _ExpenseTrackerColors.white,
  background: _ExpenseTrackerColors.white,
  onBackground: _ExpenseTrackerColors.black,
  surface: _ExpenseTrackerColors.white,
  onSurface: _ExpenseTrackerColors.black,
);
