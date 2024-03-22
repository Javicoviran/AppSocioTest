import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/purchases/models/purchases_menu_view_model.dart';
import 'package:app_socio_test/features/purchases/widgets/tables/meat_table.dart';
import 'package:app_socio_test/features/purchases/widgets/tables/orders_table.dart';
import 'package:app_socio_test/features/purchases/widgets/tables/transport_table.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class PurchasesMenu extends StatelessWidget {
  final purchases = PurchasesMenuViewModel(text: "Compras", icon: Icons.assignment, onPressed: OrdersTable());
  final transport = PurchasesMenuViewModel(text: "Transporte", icon: Icons.local_shipping, onPressed: TransportTable());
  final meat = PurchasesMenuViewModel(text: "Solicitar Pedido de Carnes", icon: Icons.store, onPressed: MeatTable());

  PurchasesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Compras", backgroundColor: CommonTheme.lightGreen),
          child: Stack(
            children: [
              Container(
                height: hJM(30),
                decoration: const BoxDecoration(
                  color: CommonTheme.lightGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: hJM(10), horizontal: wJM(8)),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: hJM(2),
                  crossAxisSpacing: hJM(2),
                  children: [
                    _PurchasesMenuItem(purchasesMenuItem: purchases),
                    _PurchasesMenuItem(purchasesMenuItem: transport),
                    _PurchasesMenuItem(purchasesMenuItem: meat),
                  ],
                ),
              ),
              // Column(
              //   children: [
              //     SizedBox(
              //       child: Wrap(
              //         spacing: wJM(2),
              //         runSpacing: wJM(4),
              //         alignment: WrapAlignment.center,
              // children: [
              //   _PurchasesMenuItem(purchasesMenuItem: purchases),
              //   _PurchasesMenuItem(purchasesMenuItem: transport),
              //   _PurchasesMenuItem(purchasesMenuItem: meat),
              // ],
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PurchasesMenuItem extends StatelessWidget {
  final PurchasesMenuViewModel purchasesMenuItem;
  const _PurchasesMenuItem({required this.purchasesMenuItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (contex) => purchasesMenuItem.onPressed)),
      child: Container(
        padding: EdgeInsets.all(wJM(2)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: CommonTheme.primaryColor),
          color: CommonTheme.green50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(purchasesMenuItem.icon, color: CommonTheme.primaryColor),
            SizedBox(height: hJM(1)),
            Text(
              purchasesMenuItem.text,
              style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
