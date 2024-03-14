import 'package:app_socio_test/helpers/constants.dart';
import 'package:app_socio_test/helpers/screen_functions.dart';
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
      child: Center(
        child: Image.asset(
          logoCoviranWhiteAsset,
          alignment: Alignment.center,
          height: hJM(2.5),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
