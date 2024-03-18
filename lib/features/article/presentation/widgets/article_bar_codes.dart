import 'package:app_socio_test/features/article/presentation/models/article_bar_code_model.dart';
import 'package:app_socio_test/presentation/widgets/base_table.dart';
import 'package:app_socio_test/presentation/widgets/base_table_cell.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_table_row.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class ArticleBarCodes extends StatelessWidget {
  final List<ArticleBarCodeModel> barcodes;

  const ArticleBarCodes({
    super.key,
    required this.barcodes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Scrollbar(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
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
                    BaseTableCell(content: barcodes.first.type, textStyle: CommonTheme.tableColumnHeaderStyle),
                    BaseTableCell(content: barcodes.first.code),
                    BaseTableCell(content: barcodes.first.amount),
                    BaseTableCell(content: barcodes.first.format),
                  ],
                ),
                BaseTableRow(
                  rowChildren: [
                    BaseTableCell(content: barcodes.elementAt(1).type, textStyle: CommonTheme.tableColumnHeaderStyle),
                    BaseTableCell(content: barcodes.elementAt(1).code),
                    BaseTableCell(content: barcodes.elementAt(1).amount),
                    BaseTableCell(content: barcodes.elementAt(1).format),
                  ],
                ),
                BaseTableRow(
                  rowChildren: [
                    BaseTableCell(content: barcodes.elementAt(2).type, textStyle: CommonTheme.tableColumnHeaderStyle),
                    BaseTableCell(content: barcodes.elementAt(2).code),
                    BaseTableCell(content: barcodes.elementAt(2).amount),
                    BaseTableCell(content: barcodes.elementAt(2).format),
                  ],
                ),
              ],
            ),
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
        Center(
          child: BarcodeWidget(
            data: '5449000171795',
            barcode: Barcode.code128(),
            height: hJM(12.5),
            width: wJM(80),
            style: CommonTheme.ticketTextStyle.copyWith(letterSpacing: 8),
          ),
        ),
        SizedBox(height: hJM(4)),
      ],
    );
  }
}
