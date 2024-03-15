import 'package:app_socio_test/helpers/utils.dart';
import 'package:app_socio_test/screens/home/presentation/widgets/help_contact.dart';
import 'package:app_socio_test/screens/home/presentation/widgets/home.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/base_list_item.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoreOptions extends ConsumerWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Body(
      appBar: const BaseAppBar(title: 'Más opciones'),
      child: Padding(
        padding: CommonTheme.defaultBodyPadding,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            BaseListItem(
              text: 'Home',
              icon: Icons.home_rounded,
              onTap: () {
                Navigator.push(
                  context,
                  fadeTransitionRoute(const Home()),
                );
              },
            ),
            BaseListItem(
              text: 'Mi perfil',
              icon: Icons.person_rounded,
              onTap: () {
                Navigator.push(
                  context,
                  fadeTransitionRoute(const Profile()),
                );
              },
            ),
            BaseListItem(
              text: 'Configuración',
              icon: Icons.settings_applications_outlined,
              iconColor: CommonTheme.primaryColor,
              onTap: () => {},
            ),
            BaseListItem(
              text: "Noticias",
              icon: Icons.newspaper_rounded,
              onTap: () {},
            ),
            BaseListItem(
              text: 'Ayuda y soporte',
              icon: Icons.help_rounded,
              iconColor: CommonTheme.primaryColor,
              onTap: () {
                Navigator.push(
                  context,
                  fadeTransitionRoute(const HelpContact()),
                );
              },
            ),
            BaseListItem(
              text: 'Cerrar sesión',
              icon: Icons.power_settings_new_rounded,
              iconColor: CommonTheme.errorColor,
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
