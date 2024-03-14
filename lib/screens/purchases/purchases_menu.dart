import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/covi_bar.dart';
import 'package:flutter/material.dart';

class PurchasesMenu extends StatelessWidget {
  const PurchasesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CoviBar(),
          const BaseAppBar(title: "Área privada"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.assignment_outlined),
                  Text(
                    "Compras",
                    style: CommonTheme.headlineSmall,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
