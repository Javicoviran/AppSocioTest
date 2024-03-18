import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: "Área privada", back: true),
          child: Column(
            children: [
              SizedBox(
                width: wJM(80),
                height: hJM(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.power_settings_new),
                    SizedBox(
                      width: wJM(2),
                    ),
                    Text(
                      "Desconectar",
                      style: CommonTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              const Divider(color: CommonTheme.dividerColor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: wJM(5), vertical: wJM(5)),
                child: Column(
                  children: [
                    Text(
                      "Si desconecta el área privada dejará de recibir notificaciones, si borra los datos deberá volver a introducir su usuario y contraseña para volver a acceder",
                      style: CommonTheme.bodyLarge.copyWith(color: AppColors.grey500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: hJM(3),
                    ),
                    Text(
                      'Al desconectar la aplicación volverá al área pública.',
                      style: CommonTheme.bodyLarge.copyWith(color: AppColors.grey500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: hJM(4)),
                    BaseButton(
                      text: "Desconectar",
                      backgroundColor: AppColors.red600,
                      borderStyle: AppColors.red600,
                      width: hJM(60),
                      height: hJM(10),
                    ),
                    SizedBox(height: hJM(4)),
                    BaseButton(
                      text: "Desconectar y borrar datos del usuario",
                      backgroundColor: AppColors.red600,
                      borderStyle: AppColors.red600,
                      width: hJM(60),
                      height: hJM(10),
                    )
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
