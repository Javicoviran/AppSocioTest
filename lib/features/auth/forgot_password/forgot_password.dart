import 'package:app_socio_test/features/auth/forgot_password/forgot_password_form.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // TODO: esto no evita el error del teclado? evitar singlechildscrollview?
        resizeToAvoidBottomInset: true,
        body: Body(
          appBar: const BaseAppBar(title: 'Recuperar Contraseña', back: true),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: CommonTheme.defaultBodyPadding,
              child: const ForgotPasswordForm(),
            ),
          ),
        ),
      ),
    );
  }
}
