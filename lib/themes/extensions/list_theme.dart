import 'package:flutter/material.dart';

class CakeListTheme extends ThemeExtension<CakeListTheme> {
  final Color? textColor;
  final Color? selectedItemTextColor;
  final Color? itemUnderlineColor;

  CakeListTheme({
    this.textColor,
    this.selectedItemTextColor,
    this.itemUnderlineColor,
  });

  @override
  CakeListTheme copyWith({
    Color? textColor,
    Color? selectedItemTextColor,
    Color? itemUnderlineColor,
  }) {
    return CakeListTheme(
      textColor: textColor ?? this.textColor,
      selectedItemTextColor:
          selectedItemTextColor ?? this.selectedItemTextColor,
      itemUnderlineColor: itemUnderlineColor ?? this.itemUnderlineColor,
    );
  }

  @override
  CakeListTheme lerp(ThemeExtension<CakeListTheme>? other, double t) {
    if (other is! CakeListTheme) {
      return this;
    }

    return CakeListTheme(
      textColor: Color.lerp(textColor, other.textColor, t),
      selectedItemTextColor:
          Color.lerp(selectedItemTextColor, other.selectedItemTextColor, t),
      itemUnderlineColor:
          Color.lerp(itemUnderlineColor, other.itemUnderlineColor, t),
    );
  }
}
