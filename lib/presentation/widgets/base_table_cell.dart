import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseTableCell extends StatelessWidget {
  final String content;
  final TextStyle? textStyle;

  const BaseTableCell({
    super.key,
    required this.content,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hJM(8),
      child: Center(
        child: Text(
          content,
          style: textStyle ?? CommonTheme.bodyMedium,
        ),
      ),
    );
  }
}
