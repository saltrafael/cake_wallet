import 'package:cake_wallet/themes/extensions/button_theme.dart';
import 'package:flutter/material.dart';

class CakeAlertTheme extends ThemeExtension<CakeAlertTheme> {
  final Color? backgroundColor;
  final ActionButtonsTheme? actionButtonsTheme;

  CakeAlertTheme({this.backgroundColor, ActionButtonsTheme? actionButtonsTheme})
      : actionButtonsTheme = ActionButtonsTheme(
            leftButtonTheme: CakeButtonTheme(
                backgroundColor:
                    actionButtonsTheme?.leftButtonTheme!.backgroundColor ??
                        backgroundColor,
                textColor: actionButtonsTheme?.leftButtonTheme!.textColor),
            rightButtonTheme: CakeButtonTheme(
                backgroundColor:
                    actionButtonsTheme?.rightButtonTheme!.backgroundColor ??
                        backgroundColor,
                textColor: actionButtonsTheme?.rightButtonTheme!.textColor));

  @override
  CakeAlertTheme copyWith(
          {Color? backgroundColor, ActionButtonsTheme? actionButtonsTheme}) =>
      CakeAlertTheme(
          backgroundColor: backgroundColor ?? this.backgroundColor,
          actionButtonsTheme: actionButtonsTheme ?? this.actionButtonsTheme);

  @override
  CakeAlertTheme lerp(ThemeExtension<CakeAlertTheme>? other, double t) {
    if (other is! CakeAlertTheme) {
      return this;
    }

    return CakeAlertTheme(
        backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
        actionButtonsTheme:
            actionButtonsTheme?.lerp(other.actionButtonsTheme, t));
  }
}
