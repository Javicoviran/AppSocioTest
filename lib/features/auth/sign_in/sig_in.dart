import 'package:app_socio_test/features/navbar/widgets/nav_bar.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
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
          appBar: const BaseAppBar(title: "Acceso"),
          child: Column(
            children: [
              SizedBox(
                width: wJM(80),
                child: Column(
                  children: [
                    Text(
                      "Utilice las mismas credenciales de acceso que en el portal del socio",
                      style: CommonTheme.bodyLarge.copyWith(color: AppColors.grey500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: hJM(4)),
                    const Input(
                      label: "Usuario",
                      icon: Icons.person,
                    ),
                    SizedBox(height: hJM(4)),
                    const InputPass(
                      label: "Contraseña",
                      icon: Icons.lock,
                    ),
                    SizedBox(height: hJM(2)),
                    Align(
                      alignment: Alignment.centerRight,
                      child: BaseButton(
                        width: wJM(50),
                        text: "Recuperar Contraseña",
                        buttonTextColor: CommonTheme.linkColor,
                      ),
                    ),
                    SizedBox(height: hJM(4)),
                    BaseButton(
                      height: hJM(8),
                      onClick: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar())),
                      text: "Acceder",
                      backgroundColor: AppColors.green900,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
