import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/base_button.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Ajustes', back: true),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: CommonTheme.defaultBodyPadding,
                  child: Column(
                    children: [
                      Text(
                        'Configure sus preferencias de idioma y las notificaciones que desea recibir en su dispositivo.',
                        style: CommonTheme.bodyMedium,
                      ),
                      SizedBox(height: wJM(5)),
                      const _SettingsItem(text: 'Noticias'),
                      const _SettingsItem(text: 'Consejos Territoriales'),
                      const _SettingsItem(text: 'Reuniones Socios'),
                      const _SettingsItem(text: 'Sobre Digital'),
                      const _SettingsItem(text: 'Folletos'),
                      const _SettingsItem(text: 'Pedidos'),
                      const _SettingsItem(text: 'Promociones'),
                      const _SettingsItem(text: 'Trades'),
                      const _SettingsItem(text: 'Transportes'),
                    ],
                  ),
                ),
                SizedBox(height: wJM(5)),
                BaseButton(
                  width: wJM(65),
                  text: 'Aplicar cambios',
                  backgroundColor: CommonTheme.primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SettingsItem extends StatefulWidget {
  final String text;

  const _SettingsItem({required this.text});

  @override
  State<StatefulWidget> createState() => _SettingsItemState();
}

class _SettingsItemState extends State<_SettingsItem> {
  bool light1 = false;

  final MaterialStateProperty<Icon?> thumbIcon = MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  final MaterialStateProperty<Color?> thumbColor = MaterialStateProperty.resolveWith<Color>(
    (_) => AppColors.green800,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wJM(75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.text, style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
          Switch(
            activeColor: CommonTheme.primaryColor,
            thumbIcon: thumbIcon,
            thumbColor: thumbColor,
            value: light1,
            onChanged: (bool value) {
              setState(() {
                light1 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
