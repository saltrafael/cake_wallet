import 'package:cake_wallet/themes/extensions/alert_theme.dart';
import 'package:cake_wallet/themes/extensions/button_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/themes/dark_theme.dart';
import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/palette.dart';
import 'package:cake_wallet/themes/extensions/menu_theme.dart';
// import 'package:cake_wallet/themes/extensions/icon_button_theme.dart';
// import 'package:cake_wallet/themes/extensions/list_theme.dart';
import 'package:cake_wallet/themes/extensions/picker_theme.dart';
import 'package:flutter/material.dart';

class MoneroDarkTheme extends DarkTheme {
  MoneroDarkTheme({required int raw}) : super(raw: raw);

  @override
  String get title => S.current.dark_theme;

  Color get primaryColor => PaletteDark.moneroOrange;
  Color get containerColor => PaletteDark.moneroCard;

  PageStandardTheme get moneroPageStandardTheme =>
      darkPageStandardTheme.copyWith(
        backgroundColor: Colors.black,
        primaryColor: primaryColor,
        primaryTextColor: Colors.white,
        linkTextColor: primaryColor,
        containerColor: containerColor,
        pinIndicatorFilledColor: Palette.highContrastGray,
        appBarStyle:
            AppBarStyle(iconColor: primaryColor, titleColor: primaryColor),
        choicesTheme: darkPageStandardTheme.choicesTheme
            .copyWith(selectedItemBackgroundColor: primaryColor),
        // pageIndicatorColor: Colors.white,
        // selectedPageIndicatorColor: Colors.white.withOpacity(0.5),
        switchButtonStyle: darkPageStandardTheme.switchButtonStyle!
            .copyWith(enabledColor: primaryColor),
        listTheme: darkPageStandardTheme.listTheme.copyWith(
            textColor: Colors.white,
            selectedItemTextColor: primaryColor,
            itemUnderlineColor: PaletteDark.moneroCardBorder.withOpacity(0.15)),
      );

  PageGradientTheme get moneroGradientPageTheme => PageGradientTheme(
        firstGradientColor: moneroPageStandardTheme.backgroundColor,
        secondGradientColor: moneroPageStandardTheme.backgroundColor,
        thirdGradientColor: moneroPageStandardTheme.backgroundColor,
        primaryTextColor: moneroPageStandardTheme.primaryTextColor,
      );

  DashboardPageTheme get moneroDashboardPageCardTheme =>
      darkDashboardPageTheme.copyWith(
          primaryTextColor: primaryTextColor,
          secondaryTextColor: moneroPageStandardTheme.secondaryTextColor,
          containerColor: containerColor,
          pageTitleColor: primaryColor,
          menuIconColor: primaryColor,
          pageIndicatorStyle: PageIndicatorStyle(
            dotIconColor: primaryColor,
            activePageDotIconColor: primaryColor.withOpacity(0.4),
          ),
          syncIndicatorStyle: SyncIndicatorStyle(
              backgroundColor: containerColor,
              syncedBackgroundColor: containerColor,
              textColor: Colors.white),
          mainActionsTheme: darkDashboardPageTheme.mainActionsTheme!.copyWith(
              backgroundColor: containerColor,
              iconColor: primaryColor,
              textColor: moneroPageStandardTheme.primaryTextColor),
          cardTheme: DashboardPageCardTheme(
              backgroundColor: containerColor,
              borderColor: primaryColor.withOpacity(0.2),
              secondaryTextColor: moneroPageStandardTheme.secondaryTextColor,
              primaryTextColor: moneroGradientPageTheme.primaryTextColor,
              assetTitleColor: primaryColor,
              balanceTextColor: primaryColor));

  // CardStandardTheme get moneroCardRegularPageTheme =>
  //     darkCardStandardTheme.copyWith(
  //       backgroundColor: containerColor,
  //       primaryTextColor: Colors.white,
  //       // highlightTextColor: primaryColor,
  //       // secondaryTextColor: Colors.white.withOpacity(0.67),
  //       // outgoingArrowColor: primaryColor,
  //     );

  // CardGradientTheme get moneroCardGradientTheme =>
  //     darkCardGradientTheme.copyWith(
  //       firstUpperCardGradientColor: containerColor.withOpacity(0.7),
  //       secondUpperCardGradientColor: containerColor.withOpacity(0.7),
  //       firstLowerCardGradientColor: containerColor,
  //       secondLowerCardGradientColor: containerColor,
  //       iconButtonTheme: CakeIconButtonTheme(
  //         iconColor: primaryColor,
  //         textColor: primaryColor,
  //         backgroundColor: Palette.stateGray.withOpacity(0.5),
  //       ),
  //     );

  CakeAlertTheme get moneroCakeAlertTheme => CakeAlertTheme(
      backgroundColor: containerColor,
      actionButtonsTheme: ActionButtonsTheme(
          leftButtonTheme: darkCakeAlertTheme
              .actionButtonsTheme!.leftButtonTheme!
              .copyWith(backgroundColor: containerColor),
          rightButtonTheme: CakeButtonTheme(textColor: Palette.blueCraiola)));

  CakeMenuTheme get moneroCakeMenuTheme => darkCakeMenuTheme.copyWith(
      coinIconColor: PaletteDark.moneroCardBorder,
      backgroundColor: containerColor,
      headerFirstGradientColor: containerColor,
      headerSecondGradientColor: containerColor,
      settingActionIconColor: primaryColor.withOpacity(0.7));

  CakePickerTheme get moneroPickerTheme =>
      darkPickerTheme.copyWith(backgroundColor: containerColor);

  @override
  ThemeData get themeData => darkTheme.copyWith(
        primaryColor: primaryColor,
        extensions: <ThemeExtension<dynamic>>[
          moneroPageStandardTheme,
          moneroGradientPageTheme,
          moneroDashboardPageCardTheme,
          moneroCakeMenuTheme,
          moneroPickerTheme,
          moneroCakeAlertTheme,
        ],
      );
}
