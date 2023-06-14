import 'package:flutter/material.dart';

class CakeButtonTheme extends ThemeExtension<CakeButtonTheme> {
  final Color? backgroundColor;
  final Color? textColor;

  const CakeButtonTheme({this.backgroundColor, this.textColor});

  @override
  CakeButtonTheme copyWith({Color? backgroundColor, Color? textColor}) =>
      CakeButtonTheme(
          backgroundColor: backgroundColor ?? this.backgroundColor,
          textColor: textColor ?? this.textColor);

  @override
  CakeButtonTheme lerp(ThemeExtension<CakeButtonTheme>? other, double t) {
    if (other is! CakeButtonTheme) {
      return this;
    }

    return CakeButtonTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
    );
  }
}

class ActionButtonsTheme extends ThemeExtension<ActionButtonsTheme> {
  final CakeButtonTheme? leftButtonTheme;
  final CakeButtonTheme? rightButtonTheme;

  const ActionButtonsTheme({this.leftButtonTheme, this.rightButtonTheme});

  @override
  ActionButtonsTheme copyWith(
          {CakeButtonTheme? leftButtonTheme,
          CakeButtonTheme? rightButtonTheme}) =>
      ActionButtonsTheme(
          leftButtonTheme: leftButtonTheme ?? this.leftButtonTheme,
          rightButtonTheme: rightButtonTheme ?? this.rightButtonTheme);

  @override
  ActionButtonsTheme lerp(ThemeExtension<ActionButtonsTheme>? other, double t) {
    if (other is! ActionButtonsTheme) {
      return this;
    }

    return ActionButtonsTheme(
      leftButtonTheme: CakeButtonTheme(
          backgroundColor: Color.lerp(leftButtonTheme?.backgroundColor,
              other.leftButtonTheme?.backgroundColor, t),
          textColor: Color.lerp(
              leftButtonTheme?.textColor, other.leftButtonTheme?.textColor, t)),
      rightButtonTheme: CakeButtonTheme(
          backgroundColor: Color.lerp(rightButtonTheme?.backgroundColor,
              other.rightButtonTheme?.backgroundColor, t),
          textColor: Color.lerp(rightButtonTheme?.textColor,
              other.rightButtonTheme?.textColor, t)),
    );
  }
}
