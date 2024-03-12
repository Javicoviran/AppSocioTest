import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class CoviBar extends StatelessWidget {
  const CoviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: CommonTheme.coviBarHeight,
      decoration: BoxDecoration(
        color: CommonTheme.statusBarColor,
        border: Border.all(width: 0),
      ),
    );
  }
}
