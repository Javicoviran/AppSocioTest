import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/covi_bar.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CoviBar(),
        BaseAppBar(title: "Área Pública"),
      ],
    );
  }
}
