import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget {
  final String title;
  final bool back;

  const BaseAppBar({
    super.key,
    required this.title,
    this.back = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0,
          color: Colors.transparent,
        ),
      ),
      height: CommonTheme.appBarHeight,
      child: Row(
        children: [
          SizedBox(width: wJM(2)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: back ? 0 : wJM(3)),
              child: Text(
                title,
                style: CommonTheme.appBarTextStyle.copyWith(color: CommonTheme.statusBarColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(width: wJM(3)),
        ],
      ),
    );
  }
}
