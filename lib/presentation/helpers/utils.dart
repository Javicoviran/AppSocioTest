import 'package:app_socio_test/presentation/widgets/exit_dialog.dart';
import 'package:flutter/material.dart';

Route fadeTransitionRoute(Widget destination) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => destination,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}

Future<bool> showExitDialog(BuildContext context) async =>
    await showDialog(
      context: context,
      builder: (context) => const ExitDialog(),
      barrierDismissible: false,
    ) ??
    false;
