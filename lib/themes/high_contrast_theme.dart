import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/themes/light_theme.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';

class HighContrastTheme extends LightTheme {
  HighContrastTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.light_theme;

  ThemeData get highContrastTheme => lightTheme.copyWith(
        primaryColor: Palette.moneroOrange, // third gradient color
        cardColor: Palette.lightOrange, // bottom button (action list)
        indicatorColor:
            PaletteDark.orangeYellow.withOpacity(0.67), // page indicator
        // extensions: <ThemeExtension<dynamic>>[
        //   lightTheme.extension<CardGradientTheme>()!.copyWith(
        //       firstUpperCardGradientColor: Palette.highContrastGray.withOpacity(0.7),
        //       secondUpperCardGradientColor: Colors.black.withOpacity(0.7),
        //       firstLowerCardGradientColor: Palette.highContrastGray,
        //       secondLowerCardGradientColor: Colors.black),
        //   lightTheme.extension<CardStandardTheme>()!.copyWith(
        //         backgroundColor: Palette.highContrastGray,
        //         primaryTextColor: Colors.white,
        //         secondaryTextColor: Colors.white.withOpacity(0.5),
        //         selectedBackgroundColor: Colors.black,
        //         selectedTextColor: Colors.white,
        //         outgoingArrowColor: Colors.white.withOpacity(0.5),
        //         incomingArrowColor: Colors.white,
        //       ),
        //   lightTheme.extension<PageStandardTheme>()!.copyWith(
        //         backgroundColor: Colors.white,
        //         primaryColor: Colors.black,
        //         primaryTextColor: Palette.stateGray,
        //         pageIndicatorColor: Palette.stateGray,
        //         selectedPageIndicatorColor: Palette.stateGray.withOpacity(0.5),
        //       ),
        // ],
      );

  @override
  ThemeData get themeData => highContrastTheme.copyWith(
        // extensions: [
        //   ...highContrastTheme.extensions.values,
        //   PageGradientTheme(
        //     pageTheme:
        //         highContrastTheme.extension<PageStandardTheme>()!,
        //     firstGradientColor: highContrastTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     secondGradientColor: highContrastTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     thirdGradientColor: highContrastTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //   ),
        // ],
      );
}
