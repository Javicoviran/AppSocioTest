import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/helpers/constants.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_base_field.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_avatar.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/base_button.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class ProfilePersonalData extends StatelessWidget {
  // final PersonalDataModel personalData;
  const ProfilePersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Mis datos', back: true),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(wJM(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const ProfileAvatar(userImage: profileAvatarImage),
                        SizedBox(height: hJM(2)),
                        Text(
                          'COVIRAN, S.C.A.',
                          style: CommonTheme.titleMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: hJM(1)),
                        const Text('cschana@coviges.es'),
                      ],
                    ),
                  ),
                  SizedBox(height: hJM(2)),
                  const ProfileBaseField(title: 'Nombre', content: 'COVIRAN, S.C.A.'),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(2)),
                  const ProfileBaseField(title: 'Razón Social', content: 'COVIRAN SUPERMERCADOS S.A.U. (CHANA) (383)'),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(2)),
                  const ProfileBaseField(title: 'Dirección', content: 'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada'),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(2)),
                  const ProfileBaseField(title: 'Teléfono', content: '958281160 - 661059930'),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(2)),
                  const ProfileBaseField(title: 'Correo Electrónico', content: 'cschana@coviges.es'),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(2)),
                  ProfileBaseField(
                    title: 'Contacto Covirán',
                    specialContent: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'ROSA MILAN RUIZ',
                          style: CommonTheme.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Icon(Icons.email_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                        SizedBox(width: wJM(2)),
                        Icon(Icons.phone_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                      ],
                    ),
                  ),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(2)),
                  const ProfileBaseField(title: 'Nif/Cif', content: 'A18080796'),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(4)),
                  Center(
                    child: BaseButton(
                      text: 'Solicitar modificación',
                      width: wJM(60),
                      backgroundColor: AppColors.green800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}