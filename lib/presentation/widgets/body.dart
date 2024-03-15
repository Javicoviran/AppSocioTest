import 'package:app_socio_test/presentation/widgets/covi_bar.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget? appBar;
  final Widget child;

  const Body({
    super.key,
    required this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const CoviBar(), if (appBar != null) appBar!, Expanded(child: child)],
    );
  }
}
