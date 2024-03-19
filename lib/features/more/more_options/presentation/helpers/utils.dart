import 'package:app_socio_test/features/auth/sign_out/presentation/widgets/sign_out_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> showSignOutDialog(BuildContext context) async =>
    await showDialog(
      context: context,
      builder: (context) => const SignOutDialog(),
      barrierDismissible: false,
    ) ??
    false;
