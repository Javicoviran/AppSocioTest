import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgotPasswordForm extends ConsumerWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(wJM(7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.settings_backup_restore,
            size: hJM(7),
            color: CommonTheme.primaryColor,
          ),
          SizedBox(height: hJM(5)),
          Text(
            'Por favor, ingresa tu dirección de correo electrónico a continuación. Te enviaremos un mensaje con instrucciones para recuperar tu contraseña',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CommonTheme.bodyMedium,
          ),
          SizedBox(height: hJM(5)),
          const Input(
            label: 'Introduzca su email de recuperación:',
            placeHolder: "Email de recuperación",
            icon: Icons.email,
          ),
          SizedBox(height: hJM(5)),
          BaseButton(
            backgroundColor: CommonTheme.primaryColor,
            text: "Enviar Correo",
            width: wJM(45),
          ),
        ],
      ),
    );
  }
}
