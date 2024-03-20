import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/purchases/models/purchases_menu_model.dart';
import 'package:app_socio_test/features/purchases/widgets/tables/meat.dart';
import 'package:app_socio_test/features/purchases/widgets/tables/orders.dart';
import 'package:app_socio_test/features/purchases/widgets/tables/transport.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PurchasesMenu extends StatelessWidget {
  final purchases = PurchasesMenuItem(text: "Compras", icon: Icons.assignment, goTo: Orders());
  final transport = PurchasesMenuItem(text: "Transporte", icon: Icons.local_shipping, goTo: Transport());
  final meat = PurchasesMenuItem(text: "Solicitar Pedido de Carnes", icon: Icons.store, goTo: Meat());

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
                height: hJM(15),
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
                padding: EdgeInsets.symmetric(vertical: hJM(5), horizontal: wJM(8)),
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
  final PurchasesMenuItem purchasesMenuItem;
  const _PurchasesMenuItem({required this.purchasesMenuItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (contex) => purchasesMenuItem.goTo)),
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
            Icon(purchasesMenuItem.icon, color: AppColors.green900),
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
