import 'package:app_socio_test/features/auth/change_password/widgets/change_password.dart';
import 'package:app_socio_test/features/more/more_options/presentation/helpers/utils.dart';
import 'package:app_socio_test/features/more/settings/presentation/widgets/settings.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/features/home/presentation/widgets/help_contact.dart';
import 'package:app_socio_test/features/profile/presentation/widgets/profile.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/base_list_item.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoreOptions extends ConsumerWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Body(
      appBar: const BaseAppBar(title: 'Más opciones'),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
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
            onTap: () => {
              Navigator.push(
                context,
                fadeTransitionRoute(const Settings()),
              ),
            },
          ),
          BaseListItem(
            text: "Noticias",
            icon: Icons.newspaper_rounded,
            onTap: () {},
          ),
          BaseListItem(
            text: 'Ayuda y soporte',
            icon: Icons.help_rounded,
            onTap: () {
              Navigator.push(
                context,
                fadeTransitionRoute(const HelpContact()),
              );
            },
          ),
          BaseListItem(
            text: "Cambiar Contraseña",
            icon: Icons.lock,
            onTap: () {
              Navigator.push(
                context,
                fadeTransitionRoute(const ChangePassword()),
              );
            },
          ),
          BaseListItem(
            text: 'Cerrar sesión',
            icon: Icons.power_settings_new_rounded,
            iconColor: CommonTheme.errorColor,
            onTap: () => showSignOutDialog(context),
          ),
        ],
      ),
    );
  }
}
