import 'package:flutter/material.dart';

class SwitchButtonStyle extends ThemeExtension<SwitchButtonStyle> {
  final Color? enabledColor;
  final Color? disabledColor;

  SwitchButtonStyle({required this.enabledColor, required this.disabledColor});

  @override
  SwitchButtonStyle copyWith({Color? enabledColor, Color? disabledColor}) {
    return SwitchButtonStyle(
        enabledColor: enabledColor ?? this.enabledColor,
        disabledColor: disabledColor ?? this.disabledColor);
  }

  @override
  SwitchButtonStyle lerp(ThemeExtension<SwitchButtonStyle>? other, double t) {
    if (other is! SwitchButtonStyle) {
      return this;
    }

    return SwitchButtonStyle(
        enabledColor: Color.lerp(enabledColor, other.enabledColor, t),
        disabledColor: Color.lerp(disabledColor, other.disabledColor, t));
  }
}
