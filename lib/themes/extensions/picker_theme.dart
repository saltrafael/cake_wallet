import 'package:flutter/material.dart';

class CurrencyTagStyle {
  final BoxDecoration? decoration;
  final TextStyle? textStyle;

  CurrencyTagStyle({
    required this.decoration,
    required this.textStyle,
  });
}

class CakePickerTheme extends ThemeExtension<CakePickerTheme> {
  final Color? primaryTextColor;
  final Color? backgroundColor;
  final Color? dividerColor;
  final TextStyle? hintTextStyle;
  final TextStyle? itemTextStyle;
  final TextStyle? selectedItemTextStyle;
  final Color? selectedItemIconColor;
  final CurrencyTagStyle? currencyTagStyle;

  CakePickerTheme({
    required this.primaryTextColor,
    required this.backgroundColor,
    required this.dividerColor,
    required this.hintTextStyle,
    required this.itemTextStyle,
    TextStyle? selectedItemTextStyle,
    required this.selectedItemIconColor,
    required this.currencyTagStyle,
  }) : selectedItemTextStyle = selectedItemTextStyle ?? itemTextStyle;

  @override
  CakePickerTheme copyWith({
    Color? primaryTextColor,
    Color? backgroundColor,
    Color? dividerColor,
    TextStyle? hintTextStyle,
    TextStyle? itemTextStyle,
    TextStyle? selectedItemTextStyle,
    Color? selectedItemIconColor,
    CurrencyTagStyle? currencyTagStyle,
  }) {
    return CakePickerTheme(
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      dividerColor: dividerColor ?? this.dividerColor,
      hintTextStyle: hintTextStyle ?? this.hintTextStyle,
      itemTextStyle: itemTextStyle ?? this.itemTextStyle,
      selectedItemTextStyle:
          selectedItemTextStyle ?? this.selectedItemTextStyle,
      selectedItemIconColor:
          selectedItemIconColor ?? this.selectedItemIconColor,
      currencyTagStyle: currencyTagStyle ?? this.currencyTagStyle,
    );
  }

  @override
  CakePickerTheme lerp(ThemeExtension<CakePickerTheme>? other, double t) {
    if (other is! CakePickerTheme) {
      return this;
    }

    return CakePickerTheme(
      primaryTextColor:
          Color.lerp(this.primaryTextColor, other.primaryTextColor, t),
      backgroundColor:
          Color.lerp(this.backgroundColor, other.backgroundColor, t),
      dividerColor: Color.lerp(this.dividerColor, other.dividerColor, t),
      hintTextStyle: TextStyle.lerp(this.hintTextStyle, other.hintTextStyle, t),
      itemTextStyle: TextStyle.lerp(this.itemTextStyle, other.itemTextStyle, t),
      selectedItemTextStyle: TextStyle.lerp(
          this.selectedItemTextStyle, other.selectedItemTextStyle, t),
      selectedItemIconColor: Color.lerp(
          this.selectedItemIconColor, other.selectedItemIconColor, t),
      currencyTagStyle: CurrencyTagStyle(
        decoration: BoxDecoration.lerp(this.currencyTagStyle?.decoration,
            other.currencyTagStyle?.decoration, t),
        textStyle: TextStyle.lerp(this.currencyTagStyle?.textStyle,
            other.currencyTagStyle?.textStyle, t),
      ),
    );
  }
}
