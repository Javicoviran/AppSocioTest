import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/profile/presentation/helpers/constants.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_contact_field.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class ProfileContact extends StatelessWidget {
  const ProfileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Contacto Covirán'),
          child: Padding(
            padding: EdgeInsets.all(wJM(4)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(errorNetwork, height: hJM(30)),
                SizedBox(height: hJM(2)),
                const ProfileContactField(
                  title: 'CASC',
                  schedule: 'Horario de lunes a viernes de 8 a 21 horas y sábados de 8 a 20',
                  phoneNumber: '958 80 83 00',
                  email: 'atencionalcliente@coviran.es',
                ),
                SizedBox(height: hJM(2)),
                const Divider(height: 0, color: CommonTheme.dividerColor),
                SizedBox(height: hJM(2)),
                const ProfileContactField(
                  title: 'HELPDESK',
                  schedule: 'Horario de lunes a viernes de 8 a 20 horas y sábados de 8 a 20 horas',
                  phoneNumber: '958 80 83 17',
                  email: 'consultacoviges@coviges.es',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
