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
              children: [
                Image.asset(errorNetwork, height: hJM(30)),
                SizedBox(height: hJM(2)),
                Container(
                  height: hJM(33),
                  padding: EdgeInsets.all(wJM(3)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: CommonTheme.primaryColor),
                  ),
                  child: const ProfileContactField(
                    title: 'CASC',
                    schedule: 'Horario de lunes a viernes de 8 a 21 horas y sábados de 8 a 20',
                    phoneNumber: '958 80 83 00',
                    email: 'atencionalcliente@coviran.es',
                  ),
                ),
                SizedBox(height: hJM(3)),
                Container(
                  height: hJM(33),
                  padding: EdgeInsets.all(wJM(3)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: CommonTheme.primaryColor),
                  ),
                  child: const ProfileContactField(
                    title: 'HELPDESK',
                    schedule: 'Horario de lunes a viernes de 8 a 20 horas y sábados de 8 a 20 horas',
                    phoneNumber: '958 80 83 17',
                    email: 'consultacoviges@coviges.es',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
