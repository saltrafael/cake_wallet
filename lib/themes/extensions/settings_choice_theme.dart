import 'package:flutter/material.dart';

class SettingsChoicesTheme extends ThemeExtension<SettingsChoicesTheme> {
  final Color? choiceBackgroundColor;
  final Color? choiceTextColor;
  final Color? selectedItemBackgroundColor;
  final Color? selectedItemTextColor;

  const SettingsChoicesTheme(
      {this.choiceBackgroundColor,
      this.choiceTextColor,
      this.selectedItemBackgroundColor,
      this.selectedItemTextColor});

  @override
  SettingsChoicesTheme copyWith({
    Color? choiceBackgroundColor,
    Color? choiceTextColor,
    Color? selectedItemBackgroundColor,
    Color? selectedItemTextColor,
  }) {
    return SettingsChoicesTheme(
      choiceBackgroundColor:
          choiceBackgroundColor ?? this.choiceBackgroundColor,
      choiceTextColor: choiceTextColor ?? this.choiceTextColor,
      selectedItemBackgroundColor:
          selectedItemBackgroundColor ?? this.selectedItemBackgroundColor,
      selectedItemTextColor:
          selectedItemTextColor ?? this.selectedItemTextColor,
    );
  }

  @override
  SettingsChoicesTheme lerp(
      ThemeExtension<SettingsChoicesTheme>? other, double t) {
    if (other is! SettingsChoicesTheme) {
      return this;
    }

    return SettingsChoicesTheme(
      choiceBackgroundColor:
          Color.lerp(choiceBackgroundColor, other.choiceBackgroundColor, t),
      choiceTextColor: Color.lerp(choiceTextColor, other.choiceTextColor, t),
      selectedItemBackgroundColor: Color.lerp(
          selectedItemBackgroundColor, other.selectedItemBackgroundColor, t),
      selectedItemTextColor:
          Color.lerp(selectedItemTextColor, other.selectedItemTextColor, t),
    );
  }
}
