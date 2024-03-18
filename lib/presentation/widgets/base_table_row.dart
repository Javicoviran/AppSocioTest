import 'package:app_socio_test/presentation/widgets/base_table_cell.dart';
import 'package:flutter/material.dart';

class BaseTableRow extends TableRow {
  final List<BaseTableCell> rowChildren;

  const BaseTableRow({required this.rowChildren})
      : super(
          children: rowChildren,
        );
}
