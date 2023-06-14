import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/themes/light_theme.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';

class BitcoinLightTheme extends LightTheme {
  BitcoinLightTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.light_theme;

  ThemeData get bitcoinTheme => lightTheme.copyWith(
        primaryColor: Palette.bitcoinOrange, // third gradient color
        cardColor: Palette.lightOrange, // bottom button (action list)
        indicatorColor:
            PaletteDark.orangeYellow.withOpacity(0.67), // page indicator
        // extensions: <ThemeExtension<dynamic>>[
        //   lightTheme.extension<CardGradientTheme>()!.copyWith(
        //       firstUpperCardGradientColor: Palette.bitcoinOrange.withOpacity(0.7),
        //       secondUpperCardGradientColor:
        //           Palette.moderateOrangeYellow.withOpacity(0.7),
        //       firstLowerCardGradientColor: Palette.bitcoinOrange,
        //       secondLowerCardGradientColor: Palette.moderateOrangeYellow),
        //   lightTheme.extension<CardStandardTheme>()!.copyWith(
        //         backgroundColor: Palette.bitcoinOrange.withOpacity(0.1),
        //         primaryTextColor: Palette.darkBlueCraiola,
        //         secondaryTextColor: Palette.darkBlueCraiola.withOpacity(0.67),
        //         selectedBackgroundColor: PaletteDark.orangeYellow,
        //         selectedTextColor: Colors.white,
        //         outgoingArrowColor: Palette.bitcoinOrange,
        //       ),
        //   lightTheme.extension<PageStandardTheme>()!.copyWith(
        //         backgroundColor: Colors.white,
        //         primaryColor: Palette.bitcoinOrange,
        //         primaryTextColor: Palette.darkBlueCraiola,
        //         pageIndicatorColor: PaletteDark.orangeYellow.withOpacity(0.67),
        //         selectedPageIndicatorColor: Palette.moderateOrange,
        //       ),
        // ],
      );

  @override
  ThemeData get themeData => bitcoinTheme.copyWith(
        // extensions: [
        //   ...bitcoinTheme.extensions.values,
        //   PageGradientTheme(
        //     pageTheme:
        //         bitcoinTheme.extension<PageStandardTheme>()!,
        //     firstGradientColor: bitcoinTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     secondGradientColor: bitcoinTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     thirdGradientColor: bitcoinTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //   ),
        // ],
      );
}
