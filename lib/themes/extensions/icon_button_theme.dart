import 'package:flutter/material.dart';

class CakeIconButtonTheme extends ThemeExtension<CakeIconButtonTheme> {
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;

  CakeIconButtonTheme({
    required this.backgroundColor,
    this.textColor,
    required this.iconColor,
  });

  @override
  CakeIconButtonTheme copyWith({
    Color? backgroundColor,
    TextStyle? textStyle,
    Color? iconColor,
  }) {
    return CakeIconButtonTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  CakeIconButtonTheme lerp(
      ThemeExtension<CakeIconButtonTheme>? other, double t) {
    if (other is! CakeIconButtonTheme) {
      return this;
    }

    return CakeIconButtonTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      iconColor: Color.lerp(iconColor, other.iconColor, t),
    );
  }
}
