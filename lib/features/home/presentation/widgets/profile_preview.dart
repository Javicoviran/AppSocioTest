import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/features/profile/presentation/widgets/profile.dart';
import 'package:app_socio_test/presentation/widgets/profile_avatar.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:flutter/material.dart';

class ProfilePreview extends StatelessWidget {
  // final PersonalDataPreviewModel previewModel;

  const ProfilePreview({super.key} /*{required this.previewModel}*/);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileAvatar(userImage: profileAvatarImage),
        SizedBox(
          height: wJM(17) * 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('COVIRAN, S.C.A.', style: CommonTheme.titleMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
              const Text('cschana@coviges.es'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_rounded, color: CommonTheme.green800, size: wJM(6)),
                  SizedBox(
                    width: wJM(40),
                    child: const Text(
                      'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              BaseButton(
                text: 'Mis datos',
                width: wJM(46),
                backgroundColor: CommonTheme.green800,
                onClick: () => Navigator.push(
                  context,
                  fadeTransitionRoute(const Profile()),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
