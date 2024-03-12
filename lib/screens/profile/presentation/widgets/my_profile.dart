import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/profile/presentation/helpers/constants.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/my_profile_avatar.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/my_profile_list_item.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/base_button.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'My perfil', back: true),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(wJM(4)),
              child: Column(
                children: [
                  const _PersonalData(),
                  SizedBox(height: hJM(4)),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(4)),
                  const _MyProfileList(),
                  SizedBox(height: hJM(4)),
                  const _MyProfileShopsList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyProfileShopsList extends StatelessWidget {
  const _MyProfileShopsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Mis tiendas', style: CommonTheme.titleMedium),
        SizedBox(height: hJM(4)),
        Card(
          elevation: 5.0,
          clipBehavior: Clip.none,
          margin: EdgeInsets.zero,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Image.network(
                  defaultShopImage,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(wJM(3)),
                child: Column(
                  children: [
                    Text('Info basica de la tienda', style: CommonTheme.titleMedium),
                    SizedBox(height: hJM(10)),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BaseButton(
                          text: 'Modificar',
                          backgroundColor: AppColors.green800,
                          width: wJM(36),
                        ),
                        SizedBox(width: wJM(4)),
                        BaseButton(
                          text: 'Información',
                          buttonTextColor: AppColors.green800,
                          backgroundColor: CommonTheme.backgroundColor,
                          borderStyle: AppColors.green800,
                          width: wJM(36),
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

class _MyProfileList extends StatelessWidget {
  const _MyProfileList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hJM(25),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyProfileListItem(text: 'Portal del socio', icon: Icons.web),
          MyProfileListItem(text: 'e-Factura', icon: Icons.blinds_closed_sharp),
          MyProfileListItem(text: 'Contacto', icon: Icons.contact_emergency),
        ],
      ),
    );
  }
}

class _PersonalData extends StatelessWidget {
  const _PersonalData();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const MyProfileAvatar(
            userImage:
                'https://img.freepik.com/premium-vector/old-hispanic-woman-monochrome-flat-linear-character-head-curly-silver-hair-eyebrows-editable-outline-hand-drawn-human-face-icon-2d-cartoon-spot-vector-avatar-illustration-animation_151150-16793.jpg?size=626&ext=jpg&ga=GA1.1.1079279367.1709636625&semt=ais'),
        SizedBox(width: wJM(2)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre socio/a', style: CommonTheme.titleMedium),
            const Text('emailsocioa@cov.es'),
            SizedBox(height: hJM(1.5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.location_on_rounded, color: AppColors.green800, size: hJM(4)),
                const Text('Location del socio/a'),
                // TODO: basebutton a google maps
                Icon(Icons.map_rounded, color: AppColors.green800, size: hJM(4)),
              ],
            ),
            SizedBox(height: hJM(1.5)),
            BaseButton(
              text: 'Mis datos',
              width: wJM(35),
              backgroundColor: AppColors.green800,
            ),
          ],
        ),
      ],
    );
  }
}
