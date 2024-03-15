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
        columns: <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text('Tienda', style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900)),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('Fecha', style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900)),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('Estado', style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900)),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('Pedido', style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900)),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('IN', style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900)),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('NS', style: CommonTheme.bodyMedium.copyWith(color: AppColors.green900)),
            ),
          ),
        ],
        rows: listData.map((order) {
          return DataRow(
            cells: <DataCell>[
              DataCell(Text(order.shopId)),
              DataCell(Text(order.date.toString())),
              DataCell(Text(order.state ? 'Entregado' : 'Pendiente')),
              DataCell(Text(order.orderId.toString())),
              DataCell(Text(order.issue.toString())),
              DataCell(Text(order.ns.toString())),
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
