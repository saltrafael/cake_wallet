import 'package:cake_wallet/themes/extensions/alert_theme.dart';
import 'package:cake_wallet/themes/extensions/button_theme.dart';
// import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
// import 'package:cake_wallet/themes/extensions/icon_button_theme.dart';
import 'package:cake_wallet/themes/extensions/list_theme.dart';
import 'package:cake_wallet/themes/extensions/menu_theme.dart';
import 'package:cake_wallet/themes/extensions/picker_theme.dart';
import 'package:cake_wallet/themes/extensions/settings_choice_theme.dart';
import 'package:cake_wallet/themes/extensions/switch_button_style.dart';
import 'package:cake_wallet/themes/theme_base.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:flutter/material.dart';
import 'package:cake_wallet/themes/extensions/main_actions_theme.dart';

class DarkTheme extends ThemeBase {
  DarkTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.dark_theme;

  @override
  ThemeType get type => ThemeType.dark;

  Color get primaryColor => Palette.blueCraiola;
  Color get primaryTextColor => Colors.white;
  Color get containerColor => PaletteDark.nightBlue;

  PageStandardTheme get darkPageStandardTheme => PageStandardTheme(
        backgroundColor: PaletteDark.backgroundColor,
        primaryColor: primaryColor,
        primaryTextColor: primaryTextColor,
        containerColor: containerColor,
        supportIconColor: Colors.white,
        secondaryTextColor: PaletteDark.lightBlueGrey,
        checkboxBorderColor: PaletteDark.darkCyanBlue,
        pinIndicatorColor: PaletteDark.indicatorVioletBlue,
        changePinLengthTextColor: PaletteDark.lightPurpleBlue,
        disclaimerButtonTheme:
            CakeButtonTheme(textColor: Palette.darkBlueCraiola),
        choicesTheme: SettingsChoicesTheme(
            choiceBackgroundColor: containerColor,
            choiceTextColor: PaletteDark.darkCyanBlue,
            selectedItemBackgroundColor: Palette.blueCraiola,
            selectedItemTextColor: Colors.white),
        listTheme: CakeListTheme(itemUnderlineColor: PaletteDark.darkOceanBlue),
        switchButtonStyle: SwitchButtonStyle(
            enabledColor: primaryColor,
            disabledColor: PaletteDark.deepVioletBlue),
      );

  PageGradientTheme get darkPageGradientTheme => PageGradientTheme(
      firstGradientColor: darkPageStandardTheme.backgroundColor,
      secondGradientColor: darkPageStandardTheme.backgroundColor,
      thirdGradientColor: darkPageStandardTheme.backgroundColor,
      primaryTextColor: darkPageStandardTheme.primaryTextColor);

  DashboardPageTheme get darkDashboardPageTheme => DashboardPageTheme(
      primaryTextColor: darkPageStandardTheme.primaryTextColor,
      secondaryTextColor: darkPageStandardTheme.secondaryTextColor,
      containerColor: containerColor,
      filterIconColor: PaletteDark.wildBlue,
      pageIndicatorStyle: PageIndicatorStyle(
          dotIconColor: PaletteDark.cyanBlue,
          activePageDotIconColor: Colors.white),
      mainActionsTheme:
          MainActionsTheme(disabledItemColor: PaletteDark.cyanBlue),
      syncIndicatorStyle: SyncIndicatorStyle(
          backgroundColor: PaletteDark.oceanBlue,
          syncedBackgroundColor: PaletteDark.lightNightBlue,
          textColor: PaletteDark.wildBlue));

  // CardGradientTheme get darkCardGradientTheme => CardGradientTheme(
  //     firstUpperCardGradientColor: PaletteDark.wildVioletBlue.withOpacity(0.7),
  //     secondUpperCardGradientColor: PaletteDark.wildVioletBlue.withOpacity(0.7),
  //     firstLowerCardGradientColor: PaletteDark.wildVioletBlue,
  //     secondLowerCardGradientColor: PaletteDark.wildVioletBlue,
  //     iconButtonTheme: CakeIconButtonTheme(
  //         backgroundColor: PaletteDark.moderateBlue,
  //         iconColor: primaryTextColor));

  // CardExchangePageTheme get darkCardExchangePageTheme => CardExchangePageTheme(
  //     gradientCardTheme: darkCardGradientTheme,
  //     iconButtonTheme: darkCardGradientTheme.iconButtonTheme!
  //         .copyWith(backgroundColor: PaletteDark.moderateBlue));

  // CardSendPageTheme get darkCardSendPageTheme =>
  //     CardSendPageTheme(gradientCardTheme: darkCardGradientTheme);

  CakeAlertTheme get darkCakeAlertTheme => CakeAlertTheme(
      backgroundColor: PaletteDark.darkNightBlue,
      actionButtonsTheme: ActionButtonsTheme(
          leftButtonTheme: CakeButtonTheme(textColor: Palette.alizarinRed),
          rightButtonTheme: CakeButtonTheme(textColor: primaryColor)));

  CakeMenuTheme get darkCakeMenuTheme => CakeMenuTheme(
      coinIconColor: PaletteDark.darkCyanBlue,
      backgroundColor: PaletteDark.deepPurpleBlue,
      headerFirstGradientColor: PaletteDark.deepPurpleBlue,
      headerSecondGradientColor: PaletteDark.deepPurpleBlue,
      subnameTextColor: PaletteDark.darkCyanBlue);

  CakePickerTheme get darkPickerTheme => CakePickerTheme(
      primaryTextColor: primaryTextColor,
      backgroundColor: containerColor,
      dividerColor: PaletteDark.dividerColor,
      selectedItemIconColor: primaryColor,
      hintTextStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Lato',
          decoration: TextDecoration.none,
          color: primaryTextColor),
      itemTextStyle: TextStyle(
          fontSize: 14,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
          decoration: TextDecoration.none),
      currencyTagStyle: CurrencyTagStyle(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: PaletteDark.violetBlue,
          ),
          textStyle: TextStyle(
            fontSize: 7.0,
            fontFamily: 'Lato',
            color: PaletteDark.wildBlueGrey,
          )));

  ThemeData get theme => ThemeData(
      fontFamily: 'Lato',
      brightness: Brightness.dark,
      scaffoldBackgroundColor:
          PaletteDark.backgroundColor, // second gradient color
      primaryColor: PaletteDark.backgroundColor, // third gradient color
      indicatorColor: PaletteDark.cyanBlue, // page indicator
      hoverColor: PaletteDark.cyanBlue, // amount hint text (receive page)
      dividerColor: PaletteDark.dividerColor,
      hintColor: PaletteDark.pigeonBlue, // menu
      extensions: <ThemeExtension<dynamic>>[
        darkPageStandardTheme,
        darkPageGradientTheme,
        darkDashboardPageTheme,
        darkCakeMenuTheme,
        darkPickerTheme,
        darkCakeAlertTheme,
      ],
      textTheme: TextTheme(
          // title -> titleLarge
          titleLarge: TextStyle(
              color: PaletteDark.wildBlue, // sync_indicator text
              backgroundColor:
                  PaletteDark.lightNightBlue, // synced sync_indicator
              decorationColor:
                  PaletteDark.oceanBlue // not synced sync_indicator
              ),
          bodySmall: TextStyle(
            color: PaletteDark.orangeYellow, // not synced light
            decorationColor: PaletteDark.wildBlue, // filter icon
          ),
          labelSmall: TextStyle(
              color: PaletteDark.oceanBlue, // filter button
              backgroundColor: PaletteDark.darkCyanBlue, // date section row
              decorationColor: PaletteDark
                  .wildNightBlue // icons (transaction and trade rows)
              ),
          // subhead -> titleMedium
          titleMedium: TextStyle(
            color: PaletteDark.nightBlue, // address button border
            decorationColor:
                PaletteDark.lightBlueGrey, // copy button (qr widget)
          ),
          // headline -> headlineSmall
          headlineSmall: TextStyle(
            color: PaletteDark.lightBlueGrey, // qr code
            decorationColor:
                PaletteDark.darkGrey, // bottom border of amount (receive page)
          ),
          // display1 -> headlineMedium
          headlineMedium: TextStyle(
            color: Colors.white, // icons color (receive page)
            decorationColor:
                PaletteDark.distantNightBlue, // icons background (receive page)
          ),
          // display2 -> displaySmall
          displaySmall: TextStyle(
              color: Colors.white, // text color of tiles (receive page)
              decorationColor:
                  PaletteDark.nightBlue // background of tiles (receive page)
              ),
          // display3 -> displayMedium
          displayMedium: TextStyle(
              color: Palette
                  .blueCraiola, // text color of current tile (receive page)
              decorationColor: PaletteDark
                  .lightOceanBlue // background of current tile (receive page)
              ),
          // display4 -> displayLarge
          displayLarge: TextStyle(
              color: Colors.white, // text color of tiles (account list)
              decorationColor: PaletteDark
                  .darkOceanBlue // background of tiles (account list)
              ),
          // subtitle -> titleSmall
          titleSmall: TextStyle(
              color: Palette
                  .blueCraiola, // text color of current tile (account list)
              decorationColor: PaletteDark
                  .darkNightBlue // background of current tile (account list)
              ),
          // body1 -> bodyMedium
          bodyMedium: TextStyle(
              color: PaletteDark.wildBlueGrey, // scrollbar thumb
              decorationColor: PaletteDark.violetBlue // scrollbar background
              ),
          // body2 -> bodyLarge
          bodyLarge: TextStyle(
            color: PaletteDark.deepPurpleBlue, // menu header
            decorationColor: PaletteDark.deepPurpleBlue, // menu background
          )),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(PaletteDark.wildBlueGrey),
        trackColor: MaterialStateProperty.all(PaletteDark.violetBlue),
        radius: Radius.circular(3),
        thickness: MaterialStateProperty.all(6),
        thumbVisibility: MaterialStateProperty.all(true),
        crossAxisMargin: 6,
      ),
      primaryTextTheme: TextTheme(
          // title -> titleLarge
          titleLarge: TextStyle(
              color: Colors.white, // title color
              backgroundColor: PaletteDark.darkOceanBlue // textfield underline
              ),
          bodySmall: TextStyle(
              color: PaletteDark.darkCyanBlue, // secondary text
              decorationColor: PaletteDark.darkOceanBlue // menu divider
              ),
          labelSmall: TextStyle(
            color:
                PaletteDark.lightBlueGrey, // transaction/trade details titles
            decorationColor: Colors.grey, // placeholder
          ),
          // subhead -> titleMedium
          titleMedium: TextStyle(
              color:
                  PaletteDark.darkNightBlue, // first gradient color (send page)
              decorationColor:
                  PaletteDark.darkNightBlue // second gradient color (send page)
              ),
          // headline -> headlineSmall
          headlineSmall: TextStyle(
            color: PaletteDark
                .lightVioletBlue, // text field border color (send page)
            decorationColor:
                PaletteDark.darkCyanBlue, // text field hint color (send page)
          ),
          // display1 -> headlineMedium
          headlineMedium: TextStyle(
              color: PaletteDark
                  .buttonNightBlue, // text field button color (send page)
              decorationColor:
                  PaletteDark.gray // text field button icon color (send page)
              ),
          // display2 -> displaySmall
          displaySmall: TextStyle(
              color: Colors.white, // estimated fee (send page)
              backgroundColor:
                  PaletteDark.cyanBlue, // dot color for indicator on send page
              decorationColor:
                  PaletteDark.darkCyanBlue // template dotted border (send page)
              ),
          // display3 -> displayMedium
          displayMedium: TextStyle(
              color: PaletteDark.darkCyanBlue, // template new text (send page)
              backgroundColor:
                  Colors.white, // active dot color for indicator on send page
              decorationColor: PaletteDark
                  .darkVioletBlue // template background color (send page)
              ),
          // display4 -> displayLarge
          displayLarge: TextStyle(
              color: PaletteDark.cyanBlue, // template title (send page)
              backgroundColor:
                  Colors.white, // icon color on order row (moonpay)
              decorationColor: PaletteDark
                  .darkCyanBlue // receive amount text (exchange page)
              ),
          // subtitle -> titleSmall
          titleSmall: TextStyle(
              color: PaletteDark
                  .wildVioletBlue, // first gradient color top panel (exchange page)
              decorationColor: PaletteDark
                  .wildVioletBlue // second gradient color top panel (exchange page)
              ),
          // body1 -> bodyMedium
          bodyMedium: TextStyle(
              color: PaletteDark
                  .darkNightBlue, // first gradient color bottom panel (exchange page)
              decorationColor: PaletteDark
                  .darkNightBlue, // second gradient color bottom panel (exchange page)
              backgroundColor: Palette.blueCraiola // alert right button text
              ),
          // body2 -> bodyLarge
          bodyLarge: TextStyle(
              color: PaletteDark
                  .blueGrey, // text field border on top panel (exchange page)
              decorationColor: PaletteDark
                  .moderateVioletBlue, // text field border on bottom panel (exchange page)
              backgroundColor: Palette.alizarinRed // alert left button text
              )),
      accentTextTheme: TextTheme(
        // title -> titleLarge
        titleLarge: TextStyle(
            color: PaletteDark.nightBlue, // picker background
            backgroundColor: PaletteDark.dividerColor, // picker divider
            decorationColor: PaletteDark.darkNightBlue // dialog background
            ),
        bodySmall: TextStyle(
          color: PaletteDark.nightBlue, // container (confirm exchange)
          backgroundColor: PaletteDark
              .deepVioletBlue, // button background (confirm exchange)
          decorationColor:
              Palette.darkLavender, // text color (information page)
        ),
        // subtitle -> titleSmall
        titleSmall: TextStyle(
            //color: PaletteDark.lightBlueGrey, // QR code (exchange trade page)
            color: Colors.white, // QR code (exchange trade page)
            backgroundColor:
                PaletteDark.deepVioletBlue, // divider (exchange trade page)
            decorationColor: Colors
                .white // crete new wallet button background (wallet list page)
            ),
        // headline -> headlineSmall
        headlineSmall: TextStyle(
            color: PaletteDark
                .distantBlue, // first gradient color of wallet action buttons (wallet list page)
            backgroundColor: PaletteDark
                .distantNightBlue, // second gradient color of wallet action buttons (wallet list page)
            decorationColor: Palette
                .darkBlueCraiola // restore wallet button text color (wallet list page)
            ),
        // subhead -> titleMedium
        titleMedium: TextStyle(
            color: Colors.white, // titles color (filter widget)
            backgroundColor:
                PaletteDark.darkOceanBlue, // divider color (filter widget)
            decorationColor: PaletteDark.wildVioletBlue
                .withOpacity(0.3) // checkbox background (filter widget)
            ),
        labelSmall: TextStyle(
          color: PaletteDark.wildVioletBlue, // checkbox bounds (filter widget)
          decorationColor: PaletteDark.darkCyanBlue, // menu subname
        ),
        // display1 -> headlineMedium
        headlineMedium: TextStyle(
            color: PaletteDark
                .deepPurpleBlue, // first gradient color (menu header)
            decorationColor: PaletteDark
                .deepPurpleBlue, // second gradient color(menu header)
            backgroundColor: Colors.white // active dot color
            ),
        // display2 -> displaySmall
        displaySmall: TextStyle(
            color: PaletteDark
                .nightBlue, // action button color (address text field)
            decorationColor:
                PaletteDark.darkCyanBlue, // hint text (seed widget)
            backgroundColor: PaletteDark.cyanBlue // text on balance page
            ),
        // display3 -> displayMedium
        displayMedium: TextStyle(
            color: PaletteDark.cyanBlue, // hint text (new wallet page)
            decorationColor:
                PaletteDark.darkGrey, // underline (new wallet page)
            backgroundColor:
                Colors.white // menu, icons, balance (dashboard page)
            ),
        // display4 -> displayLarge
        displayLarge: TextStyle(
            color:
                PaletteDark.deepVioletBlue, // switch background (settings page)
            backgroundColor:
                Colors.white, // icon color on support page (moonpay, github)
            decorationColor:
                PaletteDark.lightBlueGrey // hint text (exchange page)
            ),
        // body1 -> bodyMedium
        bodyMedium: TextStyle(
            color: PaletteDark.indicatorVioletBlue, // indicators (PIN code)
            decorationColor: PaletteDark.lightPurpleBlue, // switch (PIN code)
            backgroundColor: PaletteDark.darkNightBlue // alert right button
            ),
        // body2 -> bodyLarge
        bodyLarge: TextStyle(
            color: Palette.blueCraiola, // primary buttons
            decorationColor: PaletteDark.darkNightBlue, // alert left button
            backgroundColor: PaletteDark.granite // keyboard bar color
            ),
      ));

  ThemeData get darkTheme => theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          background: PaletteDark.backgroundColor,
          secondary: PaletteDark.backgroundColor,
        ),
      );

  @override
  ThemeData get themeData => darkTheme;
}
