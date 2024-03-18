import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:flutter/material.dart';

class ExitDialog extends StatelessWidget {
  const ExitDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  Icons.exit_to_app_outlined,
                  color: CommonTheme.errorColor,
                  size: hJM(4),
                ),
                SizedBox(width: wJM(2)),
                SizedBox(
                  height: hJM(4.5),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text("Salir", style: CommonTheme.titleLarge),
                  ),
                ),
              ],
            ),
            Text(
              '¿Desea salir de la aplicación?',
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
                  text: "Volver",
                  backgroundColor: CommonTheme.cancelButtonColor,
                  height: hJM(6),
                  width: wJM(25),
                ),
                SizedBox(
                  width: wJM(2),
                ),
                BaseButton(
                  text: "Sí, salir",
                  onClick: () => Navigator.pop(context, true),
                  backgroundColor: CommonTheme.errorColor,
                  height: hJM(6),
                  width: wJM(25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
