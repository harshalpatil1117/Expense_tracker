part of 'theme.dart';

final _elevatedButton = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 2,
    padding: EdgeInsets.symmetric(vertical: 13),
    backgroundColor: _ExpenseTrackerColors.indigo,
    foregroundColor: _ExpenseTrackerColors.white,
    disabledBackgroundColor: _ExpenseTrackerColors.divider,
    disabledForegroundColor: _ExpenseTrackerColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    textStyle: const TextStyle(fontSize: 16),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);

final _outlinedButton = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    backgroundColor: _ExpenseTrackerColors.white,
    foregroundColor: _ExpenseTrackerColors.blueGrey,
    elevation: 2,
    padding: EdgeInsets.symmetric(vertical: 13),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    disabledBackgroundColor: _ExpenseTrackerColors.white,
    disabledForegroundColor: _ExpenseTrackerColors.divider,
    textStyle: const TextStyle(fontSize: 16),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ).copyWith(
    side: MaterialStateProperty.resolveWith((states) {
      // If the button is disabled, return border side purple, otherwise grey
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: _ExpenseTrackerColors.divider);
      }
      return const BorderSide(color: _ExpenseTrackerColors.indigo);
    }),
  ),
);

final _textButton = TextButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: _ExpenseTrackerColors.transparent,
    foregroundColor: _ExpenseTrackerColors.indigo,
    elevation: 2,
    padding: EdgeInsets.symmetric(vertical: 13),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    disabledBackgroundColor: _ExpenseTrackerColors.transparent,
    disabledForegroundColor: _ExpenseTrackerColors.divider,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    tapTargetSize: MaterialTapTargetSize.padded,
  ),
);
