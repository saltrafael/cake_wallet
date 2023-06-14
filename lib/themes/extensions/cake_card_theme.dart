import 'package:cake_wallet/themes/extensions/icon_button_theme.dart';
import 'package:flutter/material.dart';

// Card styles for cards around the cake app
class CardStandardTheme extends ThemeExtension<CardStandardTheme> {
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? primaryTextColor;
  final TextTheme? textTheme;

  CardStandardTheme({
    required this.backgroundColor,
    required this.borderColor,
    required this.primaryTextColor,
    this.textTheme,
  });

  @override
  CardStandardTheme copyWith({
    Color? backgroundColor,
    Color? borderColor,
    Color? primaryTextColor,
    TextTheme? textTheme,
  }) {
    return CardStandardTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      textTheme: textTheme ?? this.textTheme,
    );
  }

  @override
  CardStandardTheme lerp(ThemeExtension<CardStandardTheme>? other, double t) {
    if (other is! CardStandardTheme) {
      return this;
    }

    return CardStandardTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      primaryTextColor: Color.lerp(primaryTextColor, other.primaryTextColor, t),
      textTheme: TextTheme.lerp(textTheme, other.textTheme, t),
    );
  }
}

class CakeGradientCardTheme<T extends CakeGradientCardTheme<T>>
    extends ThemeExtension<CakeGradientCardTheme<T>> {
  final Color? firstUpperCardGradientColor;
  final Color? secondUpperCardGradientColor;
  final Color? firstLowerCardGradientColor;
  final Color? secondLowerCardGradientColor;
  final CakeIconButtonTheme? iconButtonTheme;

  CakeGradientCardTheme({
    required this.firstUpperCardGradientColor,
    required this.secondUpperCardGradientColor,
    required this.firstLowerCardGradientColor,
    required this.secondLowerCardGradientColor,
    required this.iconButtonTheme,
  });

  @override
  CakeGradientCardTheme<T> copyWith({
    Color? firstUpperCardGradientColor,
    Color? secondUpperCardGradientColor,
    Color? firstLowerCardGradientColor,
    Color? secondLowerCardGradientColor,
    CakeIconButtonTheme? iconButtonTheme,
  }) {
    return CakeGradientCardTheme(
      firstUpperCardGradientColor:
          firstUpperCardGradientColor ?? this.firstUpperCardGradientColor,
      secondUpperCardGradientColor:
          secondUpperCardGradientColor ?? this.secondUpperCardGradientColor,
      firstLowerCardGradientColor:
          firstLowerCardGradientColor ?? this.firstLowerCardGradientColor,
      secondLowerCardGradientColor:
          secondLowerCardGradientColor ?? this.secondLowerCardGradientColor,
      iconButtonTheme: iconButtonTheme ?? this.iconButtonTheme,
    );
  }

  @override
  CakeGradientCardTheme<T> lerp(
      ThemeExtension<CakeGradientCardTheme>? other, double t) {
    if (other is! CakeGradientCardTheme) {
      return this;
    }

    return CakeGradientCardTheme(
      firstUpperCardGradientColor: Color.lerp(
          firstUpperCardGradientColor, other.firstUpperCardGradientColor, t),
      secondUpperCardGradientColor: Color.lerp(
          secondUpperCardGradientColor, other.secondUpperCardGradientColor, t),
      firstLowerCardGradientColor: Color.lerp(
          firstLowerCardGradientColor, other.firstLowerCardGradientColor, t),
      secondLowerCardGradientColor: Color.lerp(
          secondLowerCardGradientColor, other.secondLowerCardGradientColor, t),
      iconButtonTheme: CakeIconButtonTheme(
        backgroundColor: Color.lerp(iconButtonTheme!.backgroundColor,
            other.iconButtonTheme!.backgroundColor, t),
        textColor: Color.lerp(
            iconButtonTheme!.textColor, other.iconButtonTheme!.textColor, t),
        iconColor: Color.lerp(
            iconButtonTheme!.iconColor, other.iconButtonTheme!.iconColor, t),
      ),
    );
  }
}

class CardGradientTheme extends CakeGradientCardTheme<CardGradientTheme> {
  CardGradientTheme({
    required Color? firstUpperCardGradientColor,
    required Color? secondUpperCardGradientColor,
    required Color? firstLowerCardGradientColor,
    required Color? secondLowerCardGradientColor,
    required CakeIconButtonTheme? iconButtonTheme,
  }) : super(
          firstUpperCardGradientColor: firstUpperCardGradientColor,
          secondUpperCardGradientColor: secondUpperCardGradientColor,
          firstLowerCardGradientColor: firstLowerCardGradientColor,
          secondLowerCardGradientColor: secondLowerCardGradientColor,
          iconButtonTheme: iconButtonTheme,
        );

  @override
  Object get type => CardGradientTheme;

  @override
  CardGradientTheme copyWith({
    Color? firstUpperCardGradientColor,
    Color? secondUpperCardGradientColor,
    Color? firstLowerCardGradientColor,
    Color? secondLowerCardGradientColor,
    CakeIconButtonTheme? iconButtonTheme,
  }) {
    return CardGradientTheme(
      firstUpperCardGradientColor:
          firstUpperCardGradientColor ?? this.firstUpperCardGradientColor,
      secondUpperCardGradientColor:
          secondUpperCardGradientColor ?? this.secondUpperCardGradientColor,
      firstLowerCardGradientColor:
          firstLowerCardGradientColor ?? this.firstLowerCardGradientColor,
      secondLowerCardGradientColor:
          secondLowerCardGradientColor ?? this.secondLowerCardGradientColor,
      iconButtonTheme: iconButtonTheme ?? this.iconButtonTheme,
    );
  }

  @override
  CardGradientTheme lerp(CardGradientTheme? other, double t) {
    if (other is! CardGradientTheme) {
      return this;
    }

    return CardGradientTheme(
      firstUpperCardGradientColor: Color.lerp(
          firstUpperCardGradientColor, other.firstUpperCardGradientColor, t),
      secondUpperCardGradientColor: Color.lerp(
          secondUpperCardGradientColor, other.secondUpperCardGradientColor, t),
      firstLowerCardGradientColor: Color.lerp(
          firstLowerCardGradientColor, other.firstLowerCardGradientColor, t),
      secondLowerCardGradientColor: Color.lerp(
          secondLowerCardGradientColor, other.secondLowerCardGradientColor, t),
      iconButtonTheme: CakeIconButtonTheme(
        backgroundColor: Color.lerp(iconButtonTheme!.backgroundColor,
            other.iconButtonTheme!.backgroundColor, t),
        textColor: Color.lerp(
            iconButtonTheme!.textColor, other.iconButtonTheme!.textColor, t),
        iconColor: Color.lerp(
            iconButtonTheme!.iconColor, other.iconButtonTheme!.iconColor, t),
      ),
    );
  }
}

class CardExchangePageTheme
    extends CakeGradientCardTheme<CardExchangePageTheme> {
  final CardGradientTheme? gradientCardTheme;

  CardExchangePageTheme({
    required this.gradientCardTheme,
    Color? firstUpperCardGradientColor,
    Color? secondUpperCardGradientColor,
    Color? firstLowerCardGradientColor,
    Color? secondLowerCardGradientColor,
    CakeIconButtonTheme? iconButtonTheme,
  }) : super(
          firstUpperCardGradientColor: firstUpperCardGradientColor ??
              gradientCardTheme!.firstUpperCardGradientColor,
          secondUpperCardGradientColor: secondUpperCardGradientColor ??
              gradientCardTheme!.secondUpperCardGradientColor,
          firstLowerCardGradientColor: firstLowerCardGradientColor ??
              gradientCardTheme!.firstLowerCardGradientColor,
          secondLowerCardGradientColor: secondLowerCardGradientColor ??
              gradientCardTheme!.secondLowerCardGradientColor,
          iconButtonTheme:
              iconButtonTheme ?? gradientCardTheme!.iconButtonTheme,
        );

  @override
  Object get type => CardExchangePageTheme;
}

class CardSendPageTheme extends CakeGradientCardTheme<CardSendPageTheme> {
  final CardGradientTheme? gradientCardTheme;

  CardSendPageTheme({
    required this.gradientCardTheme,
    Color? firstUpperCardGradientColor,
    Color? secondUpperCardGradientColor,
    Color? firstLowerCardGradientColor,
    Color? secondLowerCardGradientColor,
    CakeIconButtonTheme? iconButtonTheme,
  }) : super(
          firstUpperCardGradientColor: firstUpperCardGradientColor ??
              gradientCardTheme!.firstUpperCardGradientColor,
          secondUpperCardGradientColor: secondUpperCardGradientColor ??
              gradientCardTheme!.secondUpperCardGradientColor,
          firstLowerCardGradientColor: firstLowerCardGradientColor ??
              gradientCardTheme!.firstLowerCardGradientColor,
          secondLowerCardGradientColor: secondLowerCardGradientColor ??
              gradientCardTheme!.secondLowerCardGradientColor,
          iconButtonTheme:
              iconButtonTheme ?? gradientCardTheme!.iconButtonTheme,
        );

  @override
  Object get type => CardSendPageTheme;
}

class DashboardPageCardTheme extends ThemeExtension<DashboardPageCardTheme> {
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? primaryTextColor;
  final Color? secondaryTextColor;
  final Color? assetTitleColor;
  final Color? balanceTextColor;

  DashboardPageCardTheme(
      {this.backgroundColor,
      this.borderColor,
      this.primaryTextColor,
      this.secondaryTextColor,
      this.assetTitleColor,
      this.balanceTextColor});

  @override
  DashboardPageCardTheme copyWith(
      {Color? backgroundColor,
      Color? borderColor,
      Color? primaryTextColor,
      Color? secondaryTextColor,
      Color? assetTitleColor,
      Color? balanceTextColor}) {
    return DashboardPageCardTheme(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        borderColor: borderColor ?? this.borderColor,
        primaryTextColor: primaryTextColor ?? this.primaryTextColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
        assetTitleColor: assetTitleColor ?? this.assetTitleColor,
        balanceTextColor: balanceTextColor ?? this.balanceTextColor);
  }

  @override
  DashboardPageCardTheme lerp(
      ThemeExtension<DashboardPageCardTheme>? other, double t) {
    if (other is! DashboardPageCardTheme) {
      return this;
    }

    return DashboardPageCardTheme(
        backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
        borderColor: Color.lerp(borderColor, other.borderColor, t),
        primaryTextColor:
            Color.lerp(primaryTextColor, other.primaryTextColor, t),
        secondaryTextColor:
            Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
        assetTitleColor: Color.lerp(assetTitleColor, other.assetTitleColor, t),
        balanceTextColor:
            Color.lerp(balanceTextColor, other.balanceTextColor, t));
  }
}
