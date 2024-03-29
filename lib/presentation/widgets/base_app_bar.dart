import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/app_bar_back_button.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget {
  final String title;
  final bool back;
  final Color? backgroundColor;

  const BaseAppBar({
    super.key,
    required this.title,
    this.back = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? CommonTheme.backgroundColor,
        border: Border.all(width: 0, color: Colors.transparent),
      ),
      height: CommonTheme.appBarHeight,
      child: Row(
        children: [
          Visibility(
            visible: back,
            child: const AppBarBackButton(),
          ),
          SizedBox(width: wJM(2)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: back ? 0 : wJM(3)),
              child: Text(
                title,
                style: CommonTheme.appBarTextStyle,
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
