import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/purchases/helpers/constant.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/base_data_table.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class TransportTable extends StatelessWidget {
  final List<DataRow> listData = data2.map((order) {
    return DataRow(
      cells: <DataCell>[
        DataCell(Center(child: Text(order.trans.toString()))),
        DataCell(Center(child: Text(formatDate(order.date)))),
        DataCell(Center(child: Text(order.shopId))),
        DataCell(
          SizedBox(
            width: wJM(35),
            child: Center(
              child: Text(
                order.detail,
                maxLines: 3,
                style: CommonTheme.bodySmall,
              ),
            ),
          ),
        ),
      ],
    );
  }).toList();
  final List<DataColumn> columnTitles = transportColumns.map((title) {
    return DataColumn(
      label: Center(
        child: Text(
          title,
          style: CommonTheme.bodyLarge.copyWith(
            color: CommonTheme.backgroundColor,
          ),
        ),
      ),
    );
  }).toList();
  TransportTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Compras", back: true),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _InitialText(),
              BaseDatatable(
                listData: listData,
                columnTitles: columnTitles,
                controller: ScrollController(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InitialText extends StatelessWidget {
  const _InitialText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(wJM(5)),
      child: Text(
        "Seleccione un pedido para visualizar el detalle y posibles incidencias del mismo",
        style: CommonTheme.bodyLarge.copyWith(
          color: AppColors.grey500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
