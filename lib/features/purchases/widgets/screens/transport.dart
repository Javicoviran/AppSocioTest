import 'package:app_socio_test/features/purchases/models/transport.dart';
import 'package:app_socio_test/helpers/utils.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/purchases/helpers/constant.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class Transport extends StatelessWidget {
  final List<TransportOrder> listData = data2;
  Transport({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Compras", back: true),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const _InitialText(),
                _TransportDatatable(listData: listData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TransportDatatable extends StatelessWidget {
  const _TransportDatatable({
    required this.listData,
  });

  final List<TransportOrder> listData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        border: const TableBorder(bottom: BorderSide(color: AppColors.green900), top: BorderSide(color: AppColors.green900)),
        columnSpacing: wJM(2),
        dataTextStyle: CommonTheme.bodySmall.copyWith(fontWeight: FontWeight.bold),
        columns: transportColumns.map((title) {
          return DataColumn(
            label: Expanded(
              child: Center(child: Text(title, style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900))),
            ),
          );
        }).toList(),
        rows: listData.map((order) {
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
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
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
