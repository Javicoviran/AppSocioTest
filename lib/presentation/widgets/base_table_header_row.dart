import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseTableHeaderRow extends TableRow {
  final List<Widget> headerChildren;

  const BaseTableHeaderRow({required this.headerChildren})
      : super(
          decoration: CommonTheme.tableHeaderRowBoxDecoration,
          children: headerChildren,
        );
}
