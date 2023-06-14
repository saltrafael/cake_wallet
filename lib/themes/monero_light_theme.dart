import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/themes/light_theme.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';

class MoneroLightTheme extends LightTheme {
  MoneroLightTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.light_theme;

  ThemeData get moneroTheme => lightTheme.copyWith(
        primaryColor: Palette.moneroOrange, // third gradient color
        cardColor: Palette.lightOrange, // bottom button (action list)
        indicatorColor:
            PaletteDark.orangeYellow.withOpacity(0.67), // page indicator
        // extensions: <ThemeExtension<dynamic>>[
        //   lightTheme.extension<CardGradientTheme>()!.copyWith(
        //       firstUpperCardGradientColor: Palette.moneroOrange.withOpacity(0.7),
        //       secondUpperCardGradientColor:
        //           Palette.moderateOrangeYellow.withOpacity(0.7),
        //       firstLowerCardGradientColor: Palette.moneroOrange,
        //       secondLowerCardGradientColor: Palette.moderateOrangeYellow),
        //   lightTheme.extension<CardStandardTheme>()!.copyWith(
        //         backgroundColor: Palette.moneroOrange.withOpacity(0.1),
        //         primaryTextColor: Palette.darkBlueCraiola,
        //         secondaryTextColor: Palette.darkBlueCraiola.withOpacity(0.67),
        //         selectedBackgroundColor: Palette.moderateOrange,
        //         selectedTextColor: Colors.white,
        //         outgoingArrowColor: Palette.moneroOrange,
        //       ),
        //   lightTheme.extension<PageStandardTheme>()!.copyWith(
        //         backgroundColor: Colors.white,
        //         primaryColor: Palette.moneroOrange,
        //         primaryTextColor: Palette.darkBlueCraiola,
        //         pageIndicatorColor: PaletteDark.orangeYellow.withOpacity(0.67),
        //         selectedPageIndicatorColor: Palette.moderateOrange,
        //       ),
        // ],
      );

  @override
  ThemeData get themeData => moneroTheme.copyWith(
        // extensions: [
        //   ...moneroTheme.extensions.values,
        //   PageGradientTheme(
        //     pageTheme:
        //         moneroTheme.extension<PageStandardTheme>()!,
        //     firstGradientColor: moneroTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     secondGradientColor: moneroTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     thirdGradientColor: moneroTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //   ),
        // ],
      );
}
