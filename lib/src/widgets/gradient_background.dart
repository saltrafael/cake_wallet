import 'package:cake_wallet/themes/extensions/cake_page_theme.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({required this.scaffold});

  final Widget scaffold;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Theme.of(context)
                .extension<PageGradientTheme>()!
                .firstGradientColor!,
            Theme.of(context)
                .extension<PageGradientTheme>()!
                .secondGradientColor!,
            Theme.of(context)
                .extension<PageGradientTheme>()!
                .thirdGradientColor!,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: scaffold);
  }
}
