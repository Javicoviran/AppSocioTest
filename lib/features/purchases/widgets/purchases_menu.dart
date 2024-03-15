import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/purchases/models/purchases_menu_model.dart';
import 'package:app_socio_test/features/purchases/widgets/screens/meat.dart';
import 'package:app_socio_test/features/purchases/widgets/screens/orders.dart';
import 'package:app_socio_test/features/purchases/widgets/screens/transport.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class PurchasesMenu extends StatelessWidget {
  final purchases = PurchasesMenuItem(text: "Compras", icon: Icons.assignment, goTo: Orders());
  final transport = PurchasesMenuItem(text: "Transporte", icon: Icons.local_shipping, goTo: const Transport());
  final meat = PurchasesMenuItem(text: "Solicitar Pedido de Carnes", icon: Icons.store, goTo: const Meat());
  PurchasesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Área privada"),
          child: Column(
            children: [
              const _PurchasesMenuTitle(),
              SizedBox(
                child: Wrap(
                  spacing: wJM(2),
                  runSpacing: wJM(4),
                  alignment: WrapAlignment.center,
                  children: [
                    _PurchasesMenuItem(purchasesMenuItem: purchases),
                    _PurchasesMenuItem(purchasesMenuItem: transport),
                    _PurchasesMenuItem(purchasesMenuItem: meat),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _PurchasesMenuTitle extends StatelessWidget {
  const _PurchasesMenuTitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.assignment_outlined),
        Text(
          "Pedidos",
          style: CommonTheme.headlineSmall,
        )
      ],
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
        width: wJM(40),
        height: wJM(40),
        padding: EdgeInsets.all(wJM(2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: wJM(10) * 2,
              height: wJM(10) * 2,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGreen100),
              child: Icon(purchasesMenuItem.icon, color: AppColors.green900),
            ),
            SizedBox(width: wJM(2)),
            Text(purchasesMenuItem.text, style: CommonTheme.bodyLarge, maxLines: 2, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
