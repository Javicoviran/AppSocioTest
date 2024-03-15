import 'package:app_socio_test/features/auth/login/sig_in.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignOutDialog extends ConsumerWidget {
  const SignOutDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      surfaceTintColor: CommonTheme.backgroundColor,
      child: Container(
        padding: EdgeInsets.all(hJM(2.5)),
        height: hJM(33),
        width: wJM(65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.power_settings_new_outlined,
                  color: CommonTheme.errorColor,
                  size: hJM(4),
                ),
                SizedBox(width: wJM(2)),
                SizedBox(
                  height: hJM(4.5),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Cerrar sesión', style: CommonTheme.titleLarge),
                  ),
                ),
              ],
            ),
            Text(
              '¿Desea cerrar sesión?',
              style: CommonTheme.bodyLargeStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BaseButton(
                  onClick: () => Navigator.pop(context, false),
                  text: "Cancelar",
                  backgroundColor: CommonTheme.cancelButtonColor,
                  height: hJM(6),
                  width: wJM(23),
                ),
                SizedBox(
                  width: wJM(2),
                ),
                BaseButton(
                  onClick: () {
                    Navigator.push(context, fadeTransitionRoute(const SignIn()));
                  },
                  text: 'Cerrar sesión',
                  backgroundColor: CommonTheme.errorColor,
                  height: hJM(6),
                  width: wJM(32),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
