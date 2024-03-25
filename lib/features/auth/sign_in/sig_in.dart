import 'package:app_socio_test/features/auth/sign_up/presentation/widgets/sign_up.dart';
import 'package:app_socio_test/features/navbar/widgets/nav_bar.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:app_socio_test/presentation/widgets/input.dart';
import 'package:app_socio_test/presentation/widgets/input_pass.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                  Text('Inicio de sesión', style: CommonTheme.headlineMedium),
                  SizedBox(height: hJM(3)),
                  Text(
                    "¡Hola de nuevo! Por favor, ingrese su correo electrónico y contraseña",
                    style: CommonTheme.bodyMedium.copyWith(color: CommonTheme.secondaryColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: hJM(6)),
                  const Input(label: "Correo electrónico", icon: Icons.email),
                  SizedBox(height: hJM(4)),
                  const InputPass(label: "Contraseña", icon: Icons.lock),
                  SizedBox(height: hJM(2)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: BaseButton(
                      width: wJM(47),
                      text: "Recuperar Contraseña",
                      buttonTextColor: CommonTheme.linkColor,
                    ),
                  ),
                  SizedBox(height: hJM(6)),
                  BaseButton(
                    height: hJM(8),
                    width: wJM(80),
                    onClick: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar())),
                    text: "Acceder",
                    backgroundColor: CommonTheme.primaryColor,
                  ),
                  SizedBox(height: hJM(10)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('¿No tienes cuenta?', style: CommonTheme.bodyMedium.copyWith(fontStyle: FontStyle.italic)),
                      SizedBox(width: wJM(4)),
                      BaseButton(
                        width: wJM(35),
                        text: 'Regístrate aquí',
                        buttonTextColor: CommonTheme.linkColor,
                        borderStyle: CommonTheme.linkColor,
                        onClick: () => Navigator.push(context, fadeTransitionRoute(const SignUp())),
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
