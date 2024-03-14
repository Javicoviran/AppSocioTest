import 'package:app_socio_test/helpers/extensions.dart';
import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        context.pop;
      },
      child: Padding(
        padding: EdgeInsets.all(wJM(2)),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: CommonTheme.statusBarColor,
          size: hJM(3.5),
        ),
      ),
    );
  }
}
