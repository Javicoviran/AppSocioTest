import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/base_button.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:app_socio_test/widgets/input.dart';
import 'package:app_socio_test/widgets/input_pass.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Acceso", back: true,),
          child: Column(
            children: [
              SizedBox(
                width: wJM(80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Utilice las mismas credenciales de acceso que en el portal del socio",
                      style: CommonTheme.bodyLarge.copyWith(color: AppColors.grey500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: hJM(4)),
                    const Input(label: "Usuario"),
                    SizedBox(height: hJM(4)),
                    const InputPass(label: "Contraseña"),
                    SizedBox(height: hJM(4)),
                    const BaseButton(
                      text: "Acceder",
                      backgroundColor: AppColors.lightGreen600,
                    ),
                    BaseButton(
                      width: wJM(60),
                      text: "Recuperar Contraseña",
                      buttonTextColor: CommonTheme.linkColor,
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
