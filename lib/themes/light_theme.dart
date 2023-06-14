import 'package:cake_wallet/themes/extensions/alert_theme.dart';
import 'package:cake_wallet/themes/extensions/button_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/themes/extensions/list_theme.dart';
import 'package:cake_wallet/themes/extensions/menu_theme.dart';
import 'package:cake_wallet/themes/extensions/picker_theme.dart';
import 'package:cake_wallet/themes/extensions/settings_choice_theme.dart';
import 'package:cake_wallet/themes/extensions/switch_button_style.dart';
import 'package:cake_wallet/themes/theme_base.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';

class LightTheme extends ThemeBase {
  LightTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.light_theme;

  @override
  ThemeType get type => ThemeType.light;

  Color get primaryColor => Palette.protectiveBlue;
  Color get primaryTextColor => Palette.darkBlueCraiola;
  Color get containerColor => Palette.blueAlice;

  PageStandardTheme get lightPageStandardTheme => PageStandardTheme(
      backgroundColor: Colors.white,
      primaryColor: primaryColor,
      primaryTextColor: primaryTextColor,
      containerColor: containerColor,
      supportIconColor: Colors.black,
      secondaryTextColor: Palette.darkGray,
      checkboxBorderColor: PaletteDark.pigeonBlue,
      pinIndicatorColor: Palette.darkGray,
      changePinLengthTextColor: Palette.darkGray,
      disclaimerButtonTheme: CakeButtonTheme(
          textColor: Colors.white, backgroundColor: Palette.protectiveBlue),
      choicesTheme: SettingsChoicesTheme(
          choiceBackgroundColor: Palette.shadowWhite,
          choiceTextColor: PaletteDark.pigeonBlue,
          selectedItemBackgroundColor: Palette.protectiveBlue,
          selectedItemTextColor: Colors.white),
      listTheme: CakeListTheme(itemUnderlineColor: Palette.wildPeriwinkle),
      switchButtonStyle: SwitchButtonStyle(
          enabledColor: primaryColor, disabledColor: Palette.darkGray));

  PageGradientTheme get lightPageGradientTheme => PageGradientTheme(
      firstGradientColor: lightPageStandardTheme.backgroundColor,
      secondGradientColor: lightPageStandardTheme.backgroundColor,
      thirdGradientColor: lightPageStandardTheme.backgroundColor,
      primaryTextColor: lightPageStandardTheme.primaryTextColor);

  DashboardPageTheme get lightDashboardPageTheme => DashboardPageTheme(
      primaryTextColor: lightPageStandardTheme.primaryTextColor,
      secondaryTextColor: lightPageStandardTheme.secondaryTextColor,
      containerColor: containerColor,
      filterIconColor: PaletteDark.wildBlue,
      syncIndicatorStyle: SyncIndicatorStyle(
          backgroundColor: Palette.blueAlice,
          syncedBackgroundColor: Palette.blueAlice,
          textColor: lightPageStandardTheme.primaryTextColor),
      cardTheme: DashboardPageCardTheme(
          backgroundColor: Palette.blueAlice,
          primaryTextColor: lightPageStandardTheme.primaryTextColor,
          borderColor: Colors.white.withOpacity(0.20)));

  CakeAlertTheme get lightCakeAlertTheme => CakeAlertTheme(
      backgroundColor: Colors.white,
      actionButtonsTheme: ActionButtonsTheme(
          leftButtonTheme: CakeButtonTheme(textColor: Palette.brightOrange),
          rightButtonTheme: CakeButtonTheme(textColor: primaryColor)));

  CakeMenuTheme get lightCakeMenuTheme => CakeMenuTheme(
      coinIconColor: Colors.white,
      backgroundColor: Colors.white,
      headerFirstGradientColor: Palette.blueCraiola,
      headerSecondGradientColor: Palette.blueGreyCraiola,
      subnameTextColor: Colors.white.withOpacity(0.5));

  CakePickerTheme get lightPickerTheme => CakePickerTheme(
        backgroundColor: Colors.white,
        primaryTextColor: primaryTextColor,
        dividerColor: Palette.periwinkleCraiola,
        selectedItemIconColor: primaryColor,
        hintTextStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Lato',
          decoration: TextDecoration.none,
          color: primaryTextColor,
        ),
        itemTextStyle: TextStyle(
          fontSize: 14,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
          decoration: TextDecoration.none,
        ),
        currencyTagStyle: CurrencyTagStyle(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: PaletteDark.violetBlue,
          ),
          textStyle: TextStyle(
            fontSize: 7.0,
            fontFamily: 'Lato',
            color: PaletteDark.wildBlueGrey,
          ),
        ),
      );

  ThemeData get theme => ThemeData(
      fontFamily: 'Lato',
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white, // second gradient color
      primaryColor: Colors.white, // third gradient color
      indicatorColor:
          PaletteDark.darkCyanBlue.withOpacity(0.67), // page indicator
      hoverColor: Palette.darkBlueCraiola, // amount hint text (receive page)
      dividerColor: Palette.paleBlue,
      hintColor: Palette.gray,
      extensions: <ThemeExtension<dynamic>>[
        lightPageStandardTheme,
        lightPageGradientTheme,
        lightPickerTheme,
        lightDashboardPageTheme,
        lightCakeAlertTheme,
        lightCakeMenuTheme,
      ],
      textTheme: TextTheme(
          // title -> titleLarge
          titleLarge: TextStyle(
            color: Palette.darkBlueCraiola, // sync_indicator text
            backgroundColor: Palette.blueAlice, // synced sync_indicator
            decorationColor: Palette.blueAlice
                .withOpacity(0.75), // not synced sync_indicator
          ),
          bodySmall: TextStyle(
            color: Palette.shineOrange, // not synced light
            decorationColor: PaletteDark.wildBlue, // filter icon
          ),
          labelSmall: TextStyle(
              color: Palette.blueAlice, // filter button
              backgroundColor: PaletteDark.darkCyanBlue, // date section row
              decorationColor:
                  Palette.blueAlice // icons (transaction and trade rows)
              ),
          // subhead -> titleMedium
          titleMedium: TextStyle(
            color: Palette.blueAlice, // address button border
            decorationColor:
                PaletteDark.lightBlueGrey, // copy button (qr widget)
          ),
          // headline -> headlineSmall
          headlineSmall: TextStyle(
            color: Colors.white, // qr code
            decorationColor: Palette
                .darkBlueCraiola, // bottom border of amount (receive page)
          ),
          // display1 -> headlineMedium
          headlineMedium: TextStyle(
            color: PaletteDark.lightBlueGrey, // icons color (receive page)
            decorationColor:
                Palette.moderateLavender, // icons background (receive page)
          ),
          // display2 -> headldisplaySmalline3
          displaySmall: TextStyle(
              color:
                  Palette.darkBlueCraiola, // text color of tiles (receive page)
              decorationColor:
                  Palette.blueAlice // background of tiles (receive page)
              ),
          // display3 -> displayMedium
          displayMedium: TextStyle(
              color: Colors.white, // text color of current tile (receive page),
              //decorationColor: Palette.blueCraiola // background of current tile (receive page)
              decorationColor: Palette
                  .blueCraiola // background of current tile (receive page)
              ),
          // display4 -> displayLarge
          displayLarge: TextStyle(
              color: Palette.violetBlue, // text color of tiles (account list)
              decorationColor:
                  Colors.white // background of tiles (account list)
              ),
          // subtitle -> titleSmall
          titleSmall: TextStyle(
              color: Palette
                  .protectiveBlue, // text color of current tile (account list)
              decorationColor:
                  Colors.white // background of current tile (account list)
              ),
          // body -> bodyMedium
          bodyMedium: TextStyle(
              color: Palette.moderatePurpleBlue, // scrollbar thumb
              decorationColor: Palette.periwinkleCraiola // scrollbar background
              ),
          // body2 -> bodyLarge
          bodyLarge: TextStyle(
            color: Palette.moderateLavender, // menu header
            decorationColor: Colors.white, // menu background
          )),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(Palette.moderatePurpleBlue),
        trackColor: MaterialStateProperty.all(Palette.periwinkleCraiola),
        radius: Radius.circular(3),
        thickness: MaterialStateProperty.all(6),
        thumbVisibility: MaterialStateProperty.all(true),
        crossAxisMargin: 6,
      ),
      primaryTextTheme: TextTheme(
          // title -> titleLarge
          titleLarge: TextStyle(
              color: Palette.darkBlueCraiola, // title color
              backgroundColor: Palette.wildPeriwinkle // textfield underline
              ),
          bodySmall: TextStyle(
              color: PaletteDark.pigeonBlue, // secondary text
              decorationColor: Palette.wildLavender // menu divider
              ),
          labelSmall: TextStyle(
            color: Palette.darkGray, // transaction/trade details titles
            decorationColor: PaletteDark.darkCyanBlue, // placeholder
          ),
          // subhead -> titleMedium
          titleMedium: TextStyle(
              color: Palette.blueCraiola, // first gradient color (send page)
              decorationColor:
                  Palette.blueGreyCraiola // second gradient color (send page)
              ),
          // headline -> headlineSmall
          headlineSmall: TextStyle(
            color: Colors.white
                .withOpacity(0.5), // text field border color (send page)
            decorationColor: Colors.white
                .withOpacity(0.5), // text field hint color (send page)
          ),
          // display1 -> headlineMedium
          headlineMedium: TextStyle(
              color: Colors.white
                  .withOpacity(0.2), // text field button color (send page)
              decorationColor:
                  Colors.white // text field button icon color (send page)
              ),
          // display2 -> displaySmall
          displaySmall: TextStyle(
              color: Colors.white.withOpacity(0.5), // estimated fee (send page)
              backgroundColor: PaletteDark.darkCyanBlue
                  .withOpacity(0.67), // dot color for indicator on send page
              decorationColor:
                  Palette.moderateLavender // template dotted border (send page)
              ),
          // display3 -> displayMedium
          displayMedium: TextStyle(
              color: Palette.darkBlueCraiola, // template new text (send page)
              backgroundColor: PaletteDark
                  .darkNightBlue, // active dot color for indicator on send page
              decorationColor:
                  Palette.blueAlice // template background color (send page)
              ),
          // display4 -> displayLarge
          displayLarge: TextStyle(
              color: Palette.darkBlueCraiola, // template title (send page)
              backgroundColor:
                  Colors.black, // icon color on order row (moonpay)
              decorationColor:
                  Palette.niagara // receive amount text (exchange page)
              ),
          // subtitle -> titleSmall
          titleSmall: TextStyle(
              color: Palette
                  .blueCraiola, // first gradient color top panel (exchange page)
              decorationColor: Palette
                  .blueGreyCraiola // second gradient color top panel (exchange page)
              ),
          // body -> bodyMedium
          bodyMedium: TextStyle(
              color: Palette.blueCraiola.withOpacity(
                  0.7), // first gradient color bottom panel (exchange page)
              decorationColor: Palette.blueGreyCraiola.withOpacity(
                  0.7), // second gradient color bottom panel (exchange page)
              backgroundColor: Palette.protectiveBlue // alert right button text
              ),
          // body2 -> bodyLarge
          bodyLarge: TextStyle(
              color: Colors.white.withOpacity(
                  0.5), // text field border on top panel (exchange page)
              decorationColor: Colors.white.withOpacity(
                  0.5), // text field border on bottom panel (exchange page)
              backgroundColor: Palette.brightOrange // alert left button text
              )),
      focusColor:
          Colors.white.withOpacity(0.2), // text field button (exchange page)
      accentTextTheme: TextTheme(
        // title -> headlititleLargene6
        titleLarge: TextStyle(
            color: Colors.white, // picker background
            backgroundColor: Palette.periwinkleCraiola, // picker divider
            decorationColor: Colors.white // dialog background
            ),
        bodySmall: TextStyle(
          color: Palette.blueAlice, // container (confirm exchange)
          backgroundColor:
              Palette.blueAlice, // button background (confirm exchange)
          decorationColor:
              Palette.darkBlueCraiola, // text color (information page)
        ),
        // subtitle -> titleSmall
        titleSmall: TextStyle(
            color: Palette.darkBlueCraiola, // QR code (exchange trade page)
            backgroundColor:
                Palette.wildPeriwinkle, // divider (exchange trade page)
            decorationColor: Palette
                .protectiveBlue // crete new wallet button background (wallet list page)
            ),
        // headline -> headlineSmall
        headlineSmall: TextStyle(
            color: Palette
                .moderateLavender, // first gradient color of wallet action buttons (wallet list page)
            backgroundColor: Palette
                .moderateLavender, // second gradient color of wallet action buttons (wallet list page)
            decorationColor: Colors
                .white // restore wallet button text color (wallet list page)
            ),
        // subhead -> titleMedium
        titleMedium: TextStyle(
            color: Palette.darkGray, // titles color (filter widget)
            backgroundColor:
                Palette.periwinkle, // divider color (filter widget)
            decorationColor: Colors.white // checkbox background (filter widget)
            ),
        labelSmall: TextStyle(
          color: Palette.wildPeriwinkle, // checkbox bounds (filter widget)
          decorationColor: Colors.white, // menu subname
        ),
        // display1 -> headlineMedium
        headlineMedium: TextStyle(
            color: Palette.blueCraiola, // first gradient color (menu header)
            decorationColor:
                Palette.blueGreyCraiola, // second gradient color(menu header)
            backgroundColor: PaletteDark.darkNightBlue // active dot color
            ),
        // display2 -> displaySmall
        displaySmall: TextStyle(
            color:
                Palette.shadowWhite, // action button color (address text field)
            decorationColor: Palette.darkGray, // hint text (seed widget)
            backgroundColor: Palette.darkBlueCraiola
                .withOpacity(0.67) // text on balance page
            ),
        // display3 -> displayMedium
        displayMedium: TextStyle(
            color: Palette.darkGray, // hint text (new wallet page)
            decorationColor:
                Palette.periwinkleCraiola, // underline (new wallet page)
            backgroundColor:
                Palette.darkBlueCraiola // menu, icons, balance (dashboard page)
            ),
        // display4 -> displayLarge
        displayLarge: TextStyle(
            color: Palette.darkGray, // switch background (settings page)
            backgroundColor:
                Colors.black, // icon color on support page (moonpay, github)
            decorationColor:
                Colors.white.withOpacity(0.4) // hint text (exchange page)
            ),
        // body -> bodyMedium
        bodyMedium: TextStyle(
            color: Palette.darkGray, // indicators (PIN code)
            decorationColor: Palette.darkGray, // switch (PIN code)
            backgroundColor: Colors.white // alert right button
            ),
        // body2 -> bodyLarge
        bodyLarge: TextStyle(
            color: Palette.protectiveBlue, // primary buttons
            decorationColor: Colors.white, // alert left button,
            backgroundColor: Palette.dullGray // keyboard bar color
            ),
      ),
      cardColor: Palette.protectiveBlue // bottom button (action list)
      );

  ThemeData get lightTheme => theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          background: Colors.white,
          secondary: Colors.white,
        ),
      );

  @override
  ThemeData get themeData => lightTheme;
}
