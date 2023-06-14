import 'package:cake_wallet/themes/extensions/button_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/list_theme.dart';
import 'package:cake_wallet/themes/extensions/main_actions_theme.dart';
import 'package:cake_wallet/themes/extensions/settings_choice_theme.dart';
import 'package:cake_wallet/themes/extensions/switch_button_style.dart';
import 'package:flutter/material.dart';

class AppBarStyle {
  final Color? titleColor;
  final Color? iconColor;

  const AppBarStyle({required this.titleColor, required this.iconColor});
}

class PageStandardTheme extends ThemeExtension<PageStandardTheme> {
  final Color? backgroundColor;
  final Color? primaryColor;
  final Color? primaryTextColor;
  final Color? secondaryTextColor;
  final Color? linkTextColor;
  final Color? containerColor;
  final Color? pickerCellTextColor;
  final Color? supportIconColor;
  final Color? checkboxBorderColor;
  final Color? pinIndicatorColor;
  final Color? changePinLengthTextColor;

  final SettingsChoicesTheme choicesTheme;

  final AppBarStyle appBarStyle;

  final CakeButtonTheme disclaimerButtonTheme;
  final CakeButtonTheme primaryButtonStyle;

  final SwitchButtonStyle? switchButtonStyle;

  final CakeListTheme listTheme;

  PageStandardTheme({
    required this.backgroundColor,
    required this.primaryColor,
    required this.primaryTextColor,
    required this.switchButtonStyle,
    required this.choicesTheme,
    AppBarStyle? appBarStyle,
    CakeButtonTheme? disclaimerButtonTheme,
    CakeButtonTheme? primaryButtonStyle,
    CakeListTheme? listTheme,
    this.pickerCellTextColor,
    required this.containerColor,
    required this.supportIconColor,
    required this.checkboxBorderColor,
    required this.pinIndicatorColor,
    required this.changePinLengthTextColor,
    required this.secondaryTextColor,
    Color? linkTextColor,
  })  : appBarStyle = AppBarStyle(
          titleColor: appBarStyle?.titleColor ?? primaryTextColor,
          iconColor: appBarStyle?.iconColor ?? primaryTextColor,
        ),
        disclaimerButtonTheme = CakeButtonTheme(
            backgroundColor:
                disclaimerButtonTheme?.backgroundColor ?? primaryTextColor,
            textColor: disclaimerButtonTheme?.textColor ?? secondaryTextColor),
        primaryButtonStyle = primaryButtonStyle ??
            CakeButtonTheme(
                backgroundColor: primaryColor, textColor: primaryTextColor),
        listTheme = CakeListTheme(
            textColor: listTheme?.textColor ?? primaryTextColor,
            selectedItemTextColor:
                listTheme?.selectedItemTextColor ?? primaryColor,
            itemUnderlineColor: listTheme?.itemUnderlineColor ?? primaryColor),
        linkTextColor = linkTextColor ?? primaryColor;

  @override
  Object get type => PageStandardTheme;

  @override
  PageStandardTheme copyWith({
    Color? backgroundColor,
    Color? primaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? linkTextColor,
    SettingsChoicesTheme? choicesTheme,
    SwitchButtonStyle? switchButtonStyle,
    AppBarStyle? appBarStyle,
    CakeButtonTheme? disclaimerButtonTheme,
    CakeButtonTheme? primaryButtonStyle,
    CakeListTheme? listTheme,
    Color? pickerCellTextColor,
    Color? containerColor,
    Color? supportIconColor,
    Color? checkboxBorderColor,
    Color? pinIndicatorFilledColor,
    Color? settingsArrowIconColor,
  }) {
    return PageStandardTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      primaryColor: primaryColor ?? this.primaryColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      linkTextColor: linkTextColor ?? this.linkTextColor,
      choicesTheme: SettingsChoicesTheme(
        choiceBackgroundColor: choicesTheme?.choiceBackgroundColor ??
            this.choicesTheme.choiceBackgroundColor,
        choiceTextColor:
            choicesTheme?.choiceTextColor ?? this.choicesTheme.choiceTextColor,
        selectedItemBackgroundColor:
            choicesTheme?.selectedItemBackgroundColor ??
                this.choicesTheme.selectedItemBackgroundColor,
        selectedItemTextColor: choicesTheme?.selectedItemTextColor ??
            this.choicesTheme.selectedItemTextColor,
      ),
      switchButtonStyle: SwitchButtonStyle(
        enabledColor: switchButtonStyle?.enabledColor ??
            this.switchButtonStyle?.enabledColor,
        disabledColor: switchButtonStyle?.disabledColor ??
            this.switchButtonStyle?.disabledColor,
      ),
      appBarStyle: AppBarStyle(
        titleColor: appBarStyle?.titleColor ?? this.appBarStyle.titleColor,
        iconColor: appBarStyle?.iconColor ?? this.appBarStyle.iconColor,
      ),
      disclaimerButtonTheme: CakeButtonTheme(
        backgroundColor: disclaimerButtonTheme?.backgroundColor ??
            this.disclaimerButtonTheme.backgroundColor,
        textColor: disclaimerButtonTheme?.textColor ??
            this.disclaimerButtonTheme.textColor,
      ),
      primaryButtonStyle: CakeButtonTheme(
        backgroundColor: primaryButtonStyle?.backgroundColor ??
            this.primaryButtonStyle.backgroundColor,
        textColor:
            primaryButtonStyle?.textColor ?? this.primaryButtonStyle.textColor,
      ),
      listTheme: CakeListTheme(
        textColor: listTheme?.textColor ?? this.listTheme.textColor,
        selectedItemTextColor: listTheme?.selectedItemTextColor ??
            this.listTheme.selectedItemTextColor,
        itemUnderlineColor:
            listTheme?.itemUnderlineColor ?? this.listTheme.itemUnderlineColor,
      ),
      pickerCellTextColor: pickerCellTextColor ?? this.pickerCellTextColor,
      containerColor: containerColor ?? this.containerColor,
      supportIconColor: supportIconColor ?? this.supportIconColor,
      checkboxBorderColor: checkboxBorderColor ?? this.checkboxBorderColor,
      pinIndicatorColor: pinIndicatorFilledColor ?? this.pinIndicatorColor,
      changePinLengthTextColor:
          settingsArrowIconColor ?? this.changePinLengthTextColor,
    );
  }

  @override
  PageStandardTheme lerp(PageStandardTheme? other, double t) {
    if (other is! PageStandardTheme) {
      return this;
    }

    return PageStandardTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      primaryTextColor: Color.lerp(primaryTextColor, other.primaryTextColor, t),
      secondaryTextColor:
          Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
      linkTextColor: Color.lerp(linkTextColor, other.linkTextColor, t),
      choicesTheme: SettingsChoicesTheme(
        choiceBackgroundColor: Color.lerp(choicesTheme.choiceBackgroundColor,
            other.choicesTheme.choiceBackgroundColor, t),
        choiceTextColor: Color.lerp(choicesTheme.choiceTextColor,
            other.choicesTheme.choiceTextColor, t),
        selectedItemBackgroundColor: Color.lerp(
            choicesTheme.selectedItemBackgroundColor,
            other.choicesTheme.selectedItemBackgroundColor,
            t),
        selectedItemTextColor: Color.lerp(choicesTheme.selectedItemTextColor,
            other.choicesTheme.selectedItemTextColor, t),
      ),
      switchButtonStyle: SwitchButtonStyle(
        enabledColor: Color.lerp(switchButtonStyle?.enabledColor,
            other.switchButtonStyle?.enabledColor, t),
        disabledColor: Color.lerp(switchButtonStyle?.disabledColor,
            other.switchButtonStyle?.disabledColor, t),
      ),
      appBarStyle: AppBarStyle(
        titleColor:
            Color.lerp(appBarStyle.titleColor, other.appBarStyle.titleColor, t),
        iconColor:
            Color.lerp(appBarStyle.iconColor, other.appBarStyle.iconColor, t),
      ),
      disclaimerButtonTheme: CakeButtonTheme(
        backgroundColor: Color.lerp(disclaimerButtonTheme.backgroundColor,
            other.disclaimerButtonTheme.backgroundColor, t),
        textColor: Color.lerp(disclaimerButtonTheme.textColor,
            other.disclaimerButtonTheme.textColor, t),
      ),
      primaryButtonStyle: CakeButtonTheme(
        backgroundColor: Color.lerp(primaryButtonStyle.backgroundColor,
            other.primaryButtonStyle.backgroundColor, t),
        textColor: Color.lerp(primaryButtonStyle.textColor,
            other.primaryButtonStyle.textColor, t),
      ),
      listTheme: CakeListTheme(
        textColor:
            Color.lerp(listTheme.textColor, other.listTheme.textColor, t),
        selectedItemTextColor: Color.lerp(listTheme.selectedItemTextColor,
            other.listTheme.selectedItemTextColor, t),
        itemUnderlineColor: Color.lerp(listTheme.itemUnderlineColor,
            other.listTheme.itemUnderlineColor, t),
      ),
      pickerCellTextColor:
          Color.lerp(pickerCellTextColor, other.pickerCellTextColor, t),
      containerColor: Color.lerp(containerColor, other.containerColor, t),
      checkboxBorderColor:
          Color.lerp(checkboxBorderColor, other.checkboxBorderColor, t),
      supportIconColor: Color.lerp(supportIconColor, other.supportIconColor, t),
      pinIndicatorColor:
          Color.lerp(pinIndicatorColor, other.pinIndicatorColor, t),
      changePinLengthTextColor: Color.lerp(
          changePinLengthTextColor, other.changePinLengthTextColor, t),
    );
  }
}

class PageGradientTheme extends ThemeExtension<PageGradientTheme> {
  final Color? firstGradientColor;
  final Color? secondGradientColor;
  final Color? thirdGradientColor;
  final Color? primaryTextColor;

  final TextTheme? textTheme;

  PageGradientTheme(
      {required this.firstGradientColor,
      required this.secondGradientColor,
      required this.thirdGradientColor,
      this.primaryTextColor,
      this.textTheme});

  @override
  Object get type => PageGradientTheme;

  @override
  PageGradientTheme copyWith(
      {Color? firstGradientColor,
      Color? secondGradientColor,
      Color? thirdGradientColor,
      Color? primaryTextColor,
      TextTheme? textTheme}) {
    return PageGradientTheme(
        firstGradientColor: firstGradientColor ?? this.firstGradientColor,
        secondGradientColor: secondGradientColor ?? this.secondGradientColor,
        thirdGradientColor: thirdGradientColor ?? this.thirdGradientColor,
        primaryTextColor: primaryTextColor ?? this.primaryTextColor,
        textTheme: textTheme ?? this.textTheme);
  }

  @override
  PageGradientTheme lerp(ThemeExtension<PageGradientTheme>? other, double t) {
    if (other is! PageGradientTheme) {
      return this;
    }

    return PageGradientTheme(
        firstGradientColor:
            Color.lerp(firstGradientColor, other.firstGradientColor, t),
        secondGradientColor:
            Color.lerp(secondGradientColor, other.secondGradientColor, t),
        thirdGradientColor:
            Color.lerp(thirdGradientColor, other.thirdGradientColor, t),
        primaryTextColor:
            Color.lerp(primaryTextColor, other.primaryTextColor, t),
        textTheme: TextTheme.lerp(textTheme, other.textTheme, t));
  }
}

class SyncIndicatorStyle {
  final Color? backgroundColor;
  final Color? syncedBackgroundColor;
  final Color? textColor;

  SyncIndicatorStyle(
      {required this.backgroundColor,
      required this.syncedBackgroundColor,
      required this.textColor});
}

class PageIndicatorStyle {
  final Color? dotIconColor;
  final Color? activePageDotIconColor;

  PageIndicatorStyle(
      {required this.dotIconColor, required this.activePageDotIconColor});
}

class DashboardPageTheme extends ThemeExtension<DashboardPageTheme> {
  final Color? primaryTextColor;
  final Color? secondaryTextColor;
  final Color? containerColor;
  final Color? pageTitleColor;
  final Color? menuIconColor;
  final Color? filterIconColor;
  final PageIndicatorStyle? pageIndicatorStyle;
  final SyncIndicatorStyle? syncIndicatorStyle;
  final DashboardPageCardTheme? cardTheme;
  final MainActionsTheme? mainActionsTheme;

  DashboardPageTheme(
      {required this.primaryTextColor,
      required this.secondaryTextColor,
      required this.containerColor,
      required this.syncIndicatorStyle,
      Color? pageTitleColor,
      Color? menuIconColor,
      Color? filterIconColor,
      PageIndicatorStyle? pageIndicatorStyle,
      DashboardPageCardTheme? cardTheme,
      MainActionsTheme? mainActionsTheme})
      : pageTitleColor = pageTitleColor ?? primaryTextColor,
        menuIconColor = menuIconColor ?? primaryTextColor,
        filterIconColor = filterIconColor ?? primaryTextColor,
        pageIndicatorStyle = PageIndicatorStyle(
            dotIconColor:
                pageIndicatorStyle?.dotIconColor ?? secondaryTextColor,
            activePageDotIconColor:
                pageIndicatorStyle?.activePageDotIconColor ?? primaryTextColor),
        cardTheme = DashboardPageCardTheme(
            balanceTextColor: cardTheme?.balanceTextColor ?? primaryTextColor,
            borderColor: cardTheme?.borderColor ?? Colors.transparent,
            backgroundColor: cardTheme?.backgroundColor ?? containerColor,
            assetTitleColor: cardTheme?.assetTitleColor ?? primaryTextColor,
            primaryTextColor: cardTheme?.primaryTextColor ?? primaryTextColor,
            secondaryTextColor:
                cardTheme?.secondaryTextColor ?? secondaryTextColor),
        mainActionsTheme = MainActionsTheme(
          backgroundColor: mainActionsTheme?.backgroundColor ?? containerColor,
          iconColor: mainActionsTheme?.iconColor ?? primaryTextColor,
          textColor: mainActionsTheme?.textColor ?? primaryTextColor,
          disabledItemColor:
              mainActionsTheme?.disabledItemColor ?? secondaryTextColor,
        );

  @override
  DashboardPageTheme copyWith(
      {Color? primaryTextColor,
      Color? secondaryTextColor,
      Color? containerColor,
      Color? pageTitleColor,
      Color? menuIconColor,
      Color? filterIconColor,
      SyncIndicatorStyle? syncIndicatorStyle,
      PageIndicatorStyle? pageIndicatorStyle,
      DashboardPageCardTheme? cardTheme,
      MainActionsTheme? mainActionsTheme}) {
    return DashboardPageTheme(
        primaryTextColor: primaryTextColor ?? this.primaryTextColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
        containerColor: containerColor ?? this.containerColor,
        pageTitleColor: pageTitleColor ?? this.pageTitleColor,
        menuIconColor: menuIconColor ?? this.menuIconColor,
        filterIconColor: filterIconColor ?? this.filterIconColor,
        syncIndicatorStyle: syncIndicatorStyle ?? this.syncIndicatorStyle,
        pageIndicatorStyle: pageIndicatorStyle ?? this.pageIndicatorStyle,
        cardTheme: cardTheme ?? this.cardTheme,
        mainActionsTheme: mainActionsTheme ?? this.mainActionsTheme);
  }

  @override
  DashboardPageTheme lerp(DashboardPageTheme? other, double t) {
    if (other is! DashboardPageTheme) {
      return this;
    }

    return DashboardPageTheme(
        primaryTextColor:
            Color.lerp(primaryTextColor, other.primaryTextColor, t),
        secondaryTextColor:
            Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
        containerColor: Color.lerp(containerColor, other.containerColor, t),
        pageTitleColor: Color.lerp(pageTitleColor, other.pageTitleColor, t),
        menuIconColor: Color.lerp(menuIconColor, other.menuIconColor, t),
        filterIconColor: Color.lerp(filterIconColor, other.filterIconColor, t),
        syncIndicatorStyle: SyncIndicatorStyle(
            backgroundColor: Color.lerp(syncIndicatorStyle?.backgroundColor,
                other.syncIndicatorStyle?.backgroundColor, t),
            syncedBackgroundColor: Color.lerp(
                syncIndicatorStyle?.syncedBackgroundColor,
                other.syncIndicatorStyle?.syncedBackgroundColor,
                t),
            textColor: Color.lerp(syncIndicatorStyle?.textColor,
                other.syncIndicatorStyle?.textColor, t)),
        pageIndicatorStyle: PageIndicatorStyle(
            dotIconColor: Color.lerp(pageIndicatorStyle?.dotIconColor,
                other.pageIndicatorStyle?.dotIconColor, t),
            activePageDotIconColor: Color.lerp(
                pageIndicatorStyle?.activePageDotIconColor,
                other.pageIndicatorStyle?.activePageDotIconColor,
                t)),
        cardTheme: DashboardPageCardTheme(
            balanceTextColor: Color.lerp(cardTheme?.balanceTextColor,
                other.cardTheme?.balanceTextColor, t),
            borderColor: Color.lerp(
                cardTheme?.borderColor, other.cardTheme?.borderColor, t),
            backgroundColor: Color.lerp(cardTheme?.backgroundColor,
                other.cardTheme?.backgroundColor, t),
            assetTitleColor: Color.lerp(cardTheme?.assetTitleColor,
                other.cardTheme?.assetTitleColor, t),
            primaryTextColor: Color.lerp(cardTheme?.primaryTextColor,
                other.cardTheme?.primaryTextColor, t),
            secondaryTextColor:
                Color.lerp(cardTheme?.secondaryTextColor, other.cardTheme?.secondaryTextColor, t)),
        mainActionsTheme: MainActionsTheme(backgroundColor: Color.lerp(mainActionsTheme?.backgroundColor, other.mainActionsTheme?.backgroundColor, t), iconColor: Color.lerp(mainActionsTheme?.iconColor, other.mainActionsTheme?.iconColor, t), textColor: Color.lerp(mainActionsTheme?.textColor, other.mainActionsTheme?.textColor, t)));
  }
}

class TransactionArrowStyle {
  final Color? incomingColor;
  final Color? outgoingColor;

  TransactionArrowStyle({
    required this.incomingColor,
    required this.outgoingColor,
  });
}

// class TransactionsPageTheme extends PageGradientTheme<TransactionsPageTheme> {
//   final PageGradientTheme? gradientPageTheme;

//   TransactionsPageTheme({
//     required this.gradientPageTheme,
//     TransactionArrowStyle? transactionArrowStyle,
//   }) : super(
//           firstGradientColor: gradientPageTheme?.firstGradientColor,
//           secondGradientColor: gradientPageTheme?.secondGradientColor,
//           thirdGradientColor: gradientPageTheme?.thirdGradientColor,
//           primaryTextColor: gradientPageTheme?.primaryTextColor,
//           textTheme: gradientPageTheme?.textTheme,
//         );

//   @override
//   Object get type => TransactionsPageTheme;

//   @override
//   TransactionsPageTheme copyWith({
//     Color? firstGradientColor,
//     Color? secondGradientColor,
//     Color? thirdGradientColor,
//     Color? primaryTextColor,
//     TextTheme? textTheme,
//   }) {
//     return TransactionsPageTheme(
//       gradientPageTheme: gradientPageTheme?.copyWith(
//         firstGradientColor: firstGradientColor,
//         secondGradientColor: secondGradientColor,
//         thirdGradientColor: thirdGradientColor,
//         primaryTextColor: primaryTextColor,
//         textTheme: textTheme,
//       ),
//     );
//   }

//   @override
//   TransactionsPageTheme lerp(TransactionsPageTheme? other, double t) {
//     if (other is! TransactionsPageTheme) {
//       return this;
//     }

//     return TransactionsPageTheme(
//       gradientPageTheme: gradientPageTheme?.lerp(other.gradientPageTheme, t),
//     );
//   }
// }
