import 'package:app_socio_test/features/article/presentation/widgets/article_bar_codes.dart';
import 'package:app_socio_test/presentation/widgets/base_table.dart';
import 'package:app_socio_test/presentation/widgets/base_table_cell.dart';
import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/base_table_row.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:app_socio_test/presentation/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Detalle de artículo'),
          child: Padding(
            padding: EdgeInsets.only(bottom: wJM(2.5), left: wJM(2.5), right: wJM(2.5)),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: hJM(30),
                    width: hJM(30),
                    child: ClipRRect(
                      borderRadius: CommonTheme.defaultImageRadius,
                      child: Image.network(
                        articleTestImage,
                        fit: BoxFit.contain,
                        loadingBuilder: (BuildContext _, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return LoadingShimmer(
                              width: double.infinity,
                              height: hJM(24),
                              shape: const RoundedRectangleBorder(),
                            );
                          }
                        },
                        errorBuilder: (BuildContext context, Object exception, StackTrace? stacktrace) {
                          return LoadingShimmer(
                            width: double.infinity,
                            height: hJM(24),
                            shape: const RoundedRectangleBorder(),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: hJM(4)),
                  Text(
                    'BEBIDA ISOTÓNICA ZERO NAR AQUARIUS 1,5 L',
                    style: CommonTheme.titleLarge,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: hJM(4)),
                  _BaseArticleField(
                    fieldName: 'COD',
                    textStyle: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                    fieldValue: '11103',
                  ),
                  _BaseArticleField(
                    fieldName: 'Precio',
                    textStyle: CommonTheme.titleLarge,
                    fieldValue: '1.265 €/Ud.',
                  ),
                  _BaseArticleField(
                    fieldName: 'Min. pedido',
                    fieldValue: '1 Caja, 6 Ud.',
                    textStyle: CommonTheme.titleMedium,
                  ),
                  _BaseArticleField(
                    fieldName: 'Disponible',
                    fieldValue: 'Plataforma',
                    textStyle: CommonTheme.bodyMedium,
                  ),
                  _BaseArticleField(
                    fieldName: 'Categoría Impuestos',
                    fieldValue: '21 APLICA RECARGO',
                    textStyle: CommonTheme.bodyMedium,
                  ),
                  SizedBox(height: hJM(4)),
                  const _ClasificationsTable(),
                  SizedBox(height: hJM(2)),
                  const _UnitsConversionTable(),
                  SizedBox(height: hJM(2)),
                  const ArticleBarCodes(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _UnitsConversionTable extends StatelessWidget {
  const _UnitsConversionTable();

  @override
  Widget build(BuildContext context) {
    return BaseTable(
      baseColumnsWidths: {
        0: FixedColumnWidth(wJM(70)),
        1: FixedColumnWidth(wJM(25)),
      },
      headerRows: [
        BaseTableCell(content: 'CONVERSIÓN DE UNIDADES', textStyle: CommonTheme.tableRowHeaderStyle),
        Container(color: CommonTheme.green500),
      ],
      baseRows: [
        BaseTableRow(
          rowChildren: [
            BaseTableCell(content: 'CAJ', textStyle: CommonTheme.tableColumnHeaderStyle),
            const BaseTableCell(content: '6 Ud'),
          ],
        ),
        BaseTableRow(
          rowChildren: [
            BaseTableCell(content: 'PAL', textStyle: CommonTheme.tableColumnHeaderStyle),
            const BaseTableCell(content: '504 Ud'),
          ],
        ),
        BaseTableRow(
          rowChildren: [
            BaseTableCell(content: 'UD', textStyle: CommonTheme.tableColumnHeaderStyle),
            const BaseTableCell(content: '1 Ud'),
          ],
        ),
      ],
    );
  }
}

class _ClasificationsTable extends StatelessWidget {
  const _ClasificationsTable();

  @override
  Widget build(BuildContext context) {
    return BaseTable(
      headerRows: [
        BaseTableCell(content: 'CLASIFICACIONES', textStyle: CommonTheme.tableRowHeaderStyle),
        Container(color: CommonTheme.green500),
      ],
      baseRows: [
        BaseTableRow(
          rowChildren: [
            BaseTableCell(content: 'CATEGORÍA AECOC', textStyle: CommonTheme.tableColumnHeaderStyle),
            const BaseTableCell(content: '0104021001')
          ],
        ),
      ],
    );
  }
}

class _BaseArticleField extends StatelessWidget {
  final String fieldName;
  final String fieldValue;
  final TextStyle textStyle;

  const _BaseArticleField({
    required this.fieldName,
    required this.fieldValue,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(fieldName),
            SizedBox(width: wJM(2)),
            Text(fieldValue, style: textStyle),
          ],
        ),
        Divider(height: hJM(2), color: CommonTheme.dividerColor),
      ],
    );
  }
}
