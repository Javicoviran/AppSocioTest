import 'package:app_socio_test/helpers/constants.dart';
import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/helpers/utils.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile.dart';
import 'package:app_socio_test/widgets/profile_avatar.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_button.dart';
import 'package:flutter/material.dart';

class ProfilePreview extends StatelessWidget {
  // final PersonalDataPreviewModel previewModel;

  const ProfilePreview({super.key}/*{required this.previewModel}*/);

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
                  Icon(Icons.location_on_rounded, color: AppColors.green800, size: wJM(6)),
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
                backgroundColor: AppColors.green800,
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
