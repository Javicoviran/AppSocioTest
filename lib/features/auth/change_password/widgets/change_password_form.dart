import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/input_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangePasswordForm extends ConsumerWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(top: hJM(4)),
      child: Column(
        children: [
          Icon(
            Icons.lock_clock_rounded,
            size: hJM(7),
            color: CommonTheme.primaryColor,
          ),
          SizedBox(height: hJM(3)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: hJM(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const InputPass(
                  label: 'Contraseña actual',
                  icon: Icons.lock_person,
                  placeHolder: 'Contraseña actual',
                ),
                SizedBox(height: hJM(8)),
                const InputPass(
                  label: 'Nueva Contraseña',
                  icon: Icons.lock,
                  placeHolder: "Nueva Contraseña",
                ),
                SizedBox(height: hJM(3)),
                const InputPass(
                  label: 'Confirmar Contraseña',
                  icon: Icons.lock_reset,
                  placeHolder: "Confirmar Contraseña",
                ),
              ],
            ),
          ),
          SizedBox(height: hJM(6)),
          BaseButton(
            backgroundColor: CommonTheme.primaryColor,
            text: "Cambiar Contraseña",
            width: wJM(50),
          ),
        ],
      ),
    );
  }
}
