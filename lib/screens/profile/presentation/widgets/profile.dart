import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/profile/presentation/helpers/constants.dart';
import 'package:app_socio_test/screens/profile/presentation/helpers/utils.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/personal_data.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_avatar.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_contact.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_action_list_item.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_shop_info.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/base_button.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'My perfil'),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(wJM(4)),
              child: Column(
                children: [
                  const _ProfilePersonalDataPreview(),
                  SizedBox(height: hJM(4)),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(4)),
                  const _ProfileActionsList(),
                  SizedBox(height: hJM(4)),
                  const _ProfileShopsList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileShopsList extends StatelessWidget {
  const _ProfileShopsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mis tiendas', style: CommonTheme.headlineSmall),
        SizedBox(height: hJM(2)),
        Card(
          elevation: 5.0,
          clipBehavior: Clip.none,
          margin: EdgeInsets.zero,
          surfaceTintColor: AppColors.green50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(wJM(4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COVIRAN SUPERMERCADOS S.A.U. (CHANA) (383)',
                      style: CommonTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(1)),
                    Text(
                      '383',
                      style: CommonTheme.bodySmall.copyWith(color: CommonTheme.secondaryTextColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(1.5)),
                    SizedBox(
                      height: hJM(24),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                        child: Image.network(defaultShopImage, fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: hJM(1.5)),
                    Text(
                      'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada',
                      style: CommonTheme.bodyMediumStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(1)),
                    Text(
                      '958281160 - 661059930',
                      style: CommonTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(3)),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BaseButton(
                          text: 'Modificar',
                          backgroundColor: AppColors.green800,
                          width: wJM(36),
                        ),
                        SizedBox(width: wJM(2)),
                        BaseButton(
                          width: wJM(36),
                          text: 'Información',
                          buttonTextColor: AppColors.green800,
                          backgroundColor: CommonTheme.backgroundColor,
                          borderStyle: AppColors.green800,
                          onClick: () => Navigator.push(
                            context,
                            fadeTransitionRoute(const ProfileShopInfo()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProfileActionsList extends StatelessWidget {
  const _ProfileActionsList();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProfileActionListItem(text: 'Portal del socio', icon: Icons.web_rounded, onTap: () => {}),
        ProfileActionListItem(text: 'e-Factura', icon: Icons.blinds_closed_sharp, onTap: () => {}),
        ProfileActionListItem(
          text: 'Contacto Covirán',
          icon: Icons.phone_rounded,
          onTap: () => Navigator.push(
            context,
            fadeTransitionRoute(const ProfileContact()),
          ),
        ),
        // TODO: configuración too long?
        ProfileActionListItem(text: 'Ajustes', icon: Icons.settings_rounded, onTap: () => {}),
      ],
    );
  }
}

class _ProfilePersonalDataPreview extends StatelessWidget {
  const _ProfilePersonalDataPreview();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileAvatar(userImage: profileAvatarImage),
        SizedBox(width: wJM(2)),
        SizedBox(
          height: wJM(18) * 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('COVIRAN, S.C.A.', style: CommonTheme.titleMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
              const Text('cschana@coviges.es'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_rounded, color: AppColors.green800, size: hJM(4)),
                  SizedBox(
                    width: wJM(45),
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
                width: wJM(35),
                backgroundColor: AppColors.green800,
                onClick: () => Navigator.push(
                  context,
                  fadeTransitionRoute(const PersonalData()),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
