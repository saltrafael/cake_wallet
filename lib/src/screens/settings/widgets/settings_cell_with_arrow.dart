import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:flutter/material.dart';
import 'package:cake_wallet/src/widgets/standard_list.dart';

class SettingsCellWithArrow extends StandardListRow {
  SettingsCellWithArrow({required String title, required Function(BuildContext context)? handler})
      : super(title: title, isSelected: false, onTap: handler);

  @override
  Widget buildTrailing(BuildContext context) =>
      Image.asset('assets/images/select_arrow.png',
          color: Theme.of(context)
              .extension<PageStandardTheme>()!
              .secondaryTextColor);
}