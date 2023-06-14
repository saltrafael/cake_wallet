import 'package:cake_wallet/themes/dark_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';

class AmoledDarkTheme extends DarkTheme {
  AmoledDarkTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.dark_theme;

  ThemeData get amoledTheme => darkTheme.copyWith(
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
        //         // selectedBackgroundColor: PaletteDark.lightOceanBlue,
        //         // selectedTextColor: Colors.white,
        //       ),
        //   darkTheme.extension<PageStandardTheme>()!.copyWith(
        //         backgroundColor: Colors.black,
        //         primaryColor: Palette.blueCraiola,
        //         primaryTextColor: Colors.white,
        //         // pageIndicatorColor: Colors.white,
        //         // selectedPageIndicatorColor: Colors.white.withOpacity(0.5),
        //       ),
        // ],
      );

  @override
  ThemeData get themeData => amoledTheme.copyWith(
        // extensions: [
        //   ...amoledTheme.extensions.values,
        //   PageGradientTheme(
        //     pageTheme:
        //         amoledTheme.extension<PageStandardTheme>()!,
        //     firstGradientColor: amoledTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     secondGradientColor: amoledTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //     thirdGradientColor: amoledTheme
        //         .extension<PageStandardTheme>()!
        //         .backgroundColor,
        //   ),
        // ],
      );
}
