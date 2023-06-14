import 'package:flutter/material.dart';

class MainActionsTheme extends ThemeExtension<MainActionsTheme> {
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final Color? disabledItemColor;

  MainActionsTheme(
      {this.backgroundColor,
      this.iconColor,
      this.textColor,
      this.disabledItemColor});

  @override
  MainActionsTheme copyWith(
          {Color? backgroundColor,
          Color? iconColor,
          Color? textColor,
          Color? disabledItemColor}) =>
      MainActionsTheme(
          backgroundColor: backgroundColor ?? this.backgroundColor,
          iconColor: iconColor ?? this.iconColor,
          textColor: textColor ?? this.textColor,
          disabledItemColor: disabledItemColor ?? this.disabledItemColor);

  @override
  MainActionsTheme lerp(ThemeExtension<MainActionsTheme>? other, double t) {
    if (other is! MainActionsTheme) {
      return this;
    }

    return MainActionsTheme(
        backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
        iconColor: Color.lerp(iconColor, other.iconColor, t),
        textColor: Color.lerp(textColor, other.textColor, t),
        disabledItemColor:
            Color.lerp(disabledItemColor, other.disabledItemColor, t));
  }
}
