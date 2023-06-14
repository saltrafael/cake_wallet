import 'package:flutter/material.dart';

class CakeMenuTheme extends ThemeExtension<CakeMenuTheme> {
  final Color? coinIconColor;
  final Color? headerFirstGradientColor;
  final Color? headerSecondGradientColor;
  final Color? backgroundColor;
  final Color? subnameTextColor;
  final Color? settingActionIconColor;

  CakeMenuTheme(
      {this.coinIconColor,
      this.headerFirstGradientColor,
      this.headerSecondGradientColor,
      this.backgroundColor,
      this.subnameTextColor,
      this.settingActionIconColor});

  @override
  CakeMenuTheme copyWith(
          {Color? coinIconColor,
          Color? headerFirstGradientColor,
          Color? headerSecondGradientColor,
          Color? backgroundColor,
          Color? subnameTextColor,
          Color? settingActionIconColor}) =>
      CakeMenuTheme(
          coinIconColor: coinIconColor ?? this.coinIconColor,
          headerFirstGradientColor:
              headerFirstGradientColor ?? this.headerFirstGradientColor,
          headerSecondGradientColor:
              headerSecondGradientColor ?? this.headerSecondGradientColor,
          backgroundColor: backgroundColor ?? this.backgroundColor,
          subnameTextColor: subnameTextColor ?? this.subnameTextColor,
          settingActionIconColor:
              settingActionIconColor ?? this.settingActionIconColor);

  @override
  CakeMenuTheme lerp(ThemeExtension<CakeMenuTheme>? other, double t) {
    if (other is! CakeMenuTheme) {
      return this;
    }

    return CakeMenuTheme(
        coinIconColor: Color.lerp(coinIconColor, other.coinIconColor, t),
        headerFirstGradientColor: Color.lerp(
            headerFirstGradientColor, other.headerFirstGradientColor, t),
        headerSecondGradientColor: Color.lerp(
            headerSecondGradientColor, other.headerSecondGradientColor, t),
        backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
        subnameTextColor:
            Color.lerp(subnameTextColor, other.subnameTextColor, t),
        settingActionIconColor: Color.lerp(
            settingActionIconColor, other.settingActionIconColor, t));
  }
}
