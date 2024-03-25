import 'package:app_socio_test/features/auth/change_password/widgets/change_password_form.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Body(
          appBar: const BaseAppBar(title: 'Cambiar Contraseña', back: true),
          child: SingleChildScrollView(
            child: Padding(
              padding: CommonTheme.defaultBodyPadding,
              child: const ChangePasswordForm(),
            ),
          ),
        ),
      ),
    );
  }
}
