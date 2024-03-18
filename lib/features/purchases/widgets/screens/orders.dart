import 'package:app_socio_test/helpers/utils.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/purchases/helpers/constant.dart';
import 'package:app_socio_test/features/purchases/models/order.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  final List<Order> listData = data;
  Orders({super.key});

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
              _OrdersDatatable(listData: listData),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrdersDatatable extends StatelessWidget {
  const _OrdersDatatable({
    required this.listData,
  });

  final List<Order> listData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        border: const TableBorder(bottom: BorderSide(color: AppColors.green900), top: BorderSide(color: AppColors.green900)),
        columnSpacing: wJM(2),
        dataTextStyle: CommonTheme.bodySmall.copyWith(fontWeight: FontWeight.bold),
        columns: orderColumns.map((title) {
          return DataColumn(
            label: Expanded(
              child: Center(child: Text(title, style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900))),
            ),
          );
        }).toList(),
        rows: listData.map((order) {
          return DataRow(
            cells: <DataCell>[
              DataCell(Center(child: Text(order.shopId))),
              DataCell(Center(child: Text(formatDate(order.date)))),
              DataCell(Center(child: Text(order.state ? 'Entregado' : 'Pendiente'))),
              DataCell(Center(child: Text(order.orderId.toString()))),
              DataCell(Center(child: Text(order.issue.toString()))),
              DataCell(Center(child: Text(order.ns.toString()))),
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
