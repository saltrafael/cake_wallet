import 'package:cake_wallet/themes/dark_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';

class BitcoinDarkTheme extends DarkTheme {
  BitcoinDarkTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.dark_theme;

  ThemeData get bitcoinTheme => darkTheme.copyWith(
        primaryColor: Palette.bitcoinOrange,
        // extensions: <ThemeExtension<dynamic>>[
        //   darkTheme.extension<CardGradientTheme>()!.copyWith(
        //       firstUpperCardGradientColor: PaletteDark.wildVioletBlue.withOpacity(0.7),
        //       secondUpperCardGradientColor:
        //           PaletteDark.wildVioletBlue.withOpacity(0.7),
        //       firstLowerCardGradientColor: PaletteDark.wildVioletBlue,
        //       secondLowerCardGradientColor: PaletteDark.wildVioletBlue),
        //   darkTheme.extension<CardStandardTheme>()!.copyWith(
        //         backgroundColor: PaletteDark.darkNightBlue,
        //         primaryTextColor: Colors.white,
        //         secondaryTextColor: Colors.white.withOpacity(0.67),
        //         selectedBackgroundColor: PaletteDark.lightOceanBlue,
        //         selectedTextColor: Palette.bitcoinOrange,
        //         outgoingArrowColor: Palette.bitcoinOrange,
        //       ),
        //   darkTheme.extension<PageStandardTheme>()!.copyWith(
        //         backgroundColor: PaletteDark.backgroundColor,
        //         primaryColor: Palette.bitcoinOrange,
        //         primaryTextColor: Colors.white,
        //         pageIndicatorColor: Colors.white,
        //         selectedPageIndicatorColor: Colors.white.withOpacity(0.5),
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
