import 'package:cake_wallet/generated/i18n.dart';
import 'package:cake_wallet/themes/extensions/cake_card_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:cake_wallet/themes/theme_base.dart';
import 'package:cake_wallet/themes/theme_list.dart';
import 'package:cake_wallet/view_model/settings/display_settings_view_model.dart';
import 'package:flutter/material.dart';

class SettingsThemeChoicesCell extends StatelessWidget {
  SettingsThemeChoicesCell(this._displaySettingsViewModel);

  final items = ThemeList.all;

  final DisplaySettingsViewModel _displaySettingsViewModel;

  final double cellHeight = 25;
  final double cellWidth = 12;
  final double cellRadius = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(cellHeight),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                S.current.color_theme,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context)
                      .extension<PageStandardTheme>()!
                      .listTheme
                      .textColor!,
                ),
              ),
            ],
          ),
          SizedBox(height: cellHeight),
          Container(
            height: 200,
            child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 70,
                ),
                itemBuilder: (context, index) {
                  final ThemeBase e = items[index];
                  final isSelected = _displaySettingsViewModel.theme == e;

                  return Padding(
                    padding: EdgeInsets.only(
                        right: cellHeight, bottom: 5, top: 5, left: 5),
                    child: GestureDetector(
                      onTap: () {
                        _displaySettingsViewModel.setTheme(e);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(cellRadius),
                          border: isSelected
                              ? Border.all(
                                  color: Theme.of(context)
                                      .extension<PageStandardTheme>()!
                                      .primaryColor!,
                                )
                              : null,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: cellWidth, vertical: cellHeight),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(cellRadius),
                                    bottomLeft: Radius.circular(cellRadius)),
                                color: e.themeData
                                    .extension<PageStandardTheme>()!
                                    .primaryColor,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: cellWidth, vertical: cellHeight),
                              decoration: BoxDecoration(
                                color: e.themeData
                                    .extension<PageStandardTheme>()!
                                    .backgroundColor!,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: cellWidth, vertical: cellHeight),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(cellRadius),
                                    bottomRight: Radius.circular(cellRadius)),
                                color: e.themeData
                                    .extension<PageStandardTheme>()!
                                    .containerColor!,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
