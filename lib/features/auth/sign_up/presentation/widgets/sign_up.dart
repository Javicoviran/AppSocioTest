import 'package:app_socio_test/features/navbar/widgets/nav_bar.dart';
import 'package:app_socio_test/presentation/helpers/extensions.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:app_socio_test/presentation/widgets/input.dart';
import 'package:app_socio_test/presentation/widgets/input_pass.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: CommonTheme.defaultBodyPadding,
              child: Column(
                children: [
                  SizedBox(height: hJM(2)),
                  Text('Crear cuenta', style: CommonTheme.headlineMedium),
                  SizedBox(height: hJM(3)),
                  Text(
                    "Por favor, completa la siguiente información para registrarte utilizando tu cuenta de correo electrónico. ¡Esperamos darte la bienvenida a nuestra comunidad!",
                    style: CommonTheme.bodyMedium.copyWith(color: CommonTheme.secondaryColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: hJM(6)),
                  const Input(label: "Codigo de socio", icon: Icons.numbers_rounded),
                  SizedBox(height: hJM(4)),
                  const Input(label: "Correo electrónico", icon: Icons.email_rounded),
                  SizedBox(height: hJM(4)),
                  const InputPass(label: "Contraseña", icon: Icons.lock),
                  SizedBox(height: hJM(2)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: BaseButton(
                      width: wJM(78),
                      text: "Acepto los términos y condiciones",
                      icon: const Icon(Icons.check_box_outline_blank, color: CommonTheme.linkColor),
                      buttonTextColor: CommonTheme.linkColor,
                    ),
                  ),
                  SizedBox(height: hJM(6)),
                  BaseButton(
                    height: hJM(8),
                    width: wJM(80),
                    onClick: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar())),
                    text: "Crear cuenta",
                    backgroundColor: CommonTheme.primaryColor,
                  ),
                  SizedBox(height: hJM(10)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('¿Ya tienes cuenta?', style: CommonTheme.bodyMedium.copyWith(fontStyle: FontStyle.italic)),
                      SizedBox(width: wJM(4)),
                      BaseButton(
                        width: wJM(35),
                        text: 'Iniciar sesión',
                        buttonTextColor: CommonTheme.linkColor,
                        borderStyle: CommonTheme.linkColor,
                        onClick: () => context.pop,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
