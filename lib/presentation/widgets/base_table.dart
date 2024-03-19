import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_table_header_row.dart';
import 'package:app_socio_test/presentation/widgets/base_table_row.dart';
import 'package:flutter/material.dart';

class BaseTable extends StatelessWidget {
  final List<Widget> headerRows;
  final List<BaseTableRow> baseRows;
  final Map<int, TableColumnWidth>? baseColumnsWidths;

  const BaseTable({
    super.key,
    required this.headerRows,
    required this.baseRows,
    this.baseColumnsWidths,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: baseColumnsWidths,
      border: TableBorder.all(color: CommonTheme.green500, borderRadius: CommonTheme.defaultImageRadius),
      children: [
        BaseTableHeaderRow(headerChildren: headerRows),
        ...baseRows,
      ],
    );
  }
}
