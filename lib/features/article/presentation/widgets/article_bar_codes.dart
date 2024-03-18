import 'package:app_socio_test/presentation/widgets/base_table.dart';
import 'package:app_socio_test/presentation/widgets/base_table_cell.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_table_row.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class ArticleBarCodes extends StatelessWidget {
  const ArticleBarCodes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: BaseTable(
            baseColumnsWidths: const {
              0: FixedColumnWidth(100.0),
              1: FixedColumnWidth(140.0),
              2: FixedColumnWidth(100.0),
              3: FixedColumnWidth(100.0),
            },
            headerRows: [
              BaseTableCell(content: 'TIPO', textStyle: CommonTheme.tableRowHeaderStyle),
              BaseTableCell(content: 'CÓDIGO', textStyle: CommonTheme.tableRowHeaderStyle),
              BaseTableCell(content: 'CANTIDAD', textStyle: CommonTheme.tableRowHeaderStyle),
              BaseTableCell(content: 'FORMATO', textStyle: CommonTheme.tableRowHeaderStyle),
            ],
            baseRows: [
              BaseTableRow(
                rowChildren: [
                  BaseTableCell(content: 'EAN13', textStyle: CommonTheme.tableColumnHeaderStyle),
                  const BaseTableCell(content: '5449000171795'),
                  const BaseTableCell(content: '1'),
                  const BaseTableCell(content: 'Ud'),
                ],
              ),
              BaseTableRow(
                rowChildren: [
                  BaseTableCell(content: 'EAN13', textStyle: CommonTheme.tableColumnHeaderStyle),
                  const BaseTableCell(content: '5449000172365'),
                  const BaseTableCell(content: '6'),
                  const BaseTableCell(content: 'caj'),
                ],
              ),
              BaseTableRow(
                rowChildren: [
                  BaseTableCell(content: 'DUN14', textStyle: CommonTheme.tableColumnHeaderStyle),
                  const BaseTableCell(content: '05449000172365'),
                  const BaseTableCell(content: '6'),
                  const BaseTableCell(content: 'caj'),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: hJM(4)),
        Text('Códigos de barras', style: CommonTheme.titleLarge),
        SizedBox(height: hJM(2)),
        const DefaultTabController(
          length: 3,
          child: TabBar(
            tabs: [
              Tab(text: 'EAN13'),
              Tab(text: 'EAN13'),
              Tab(text: 'DUN14'),
            ],
          ),
        ),
        SizedBox(height: hJM(2)),
        BarcodeWidget(
          data: '5449000171795',
          barcode: Barcode.code128(),
          height: hJM(12.5),
          style: CommonTheme.ticketTextStyle.copyWith(letterSpacing: 8),
        ),
        SizedBox(height: hJM(4)),
      ],
    );
  }
}
