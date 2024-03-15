import 'package:app_socio_test/helpers/constants.dart';
import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/profile/presentation/models/profile_action_item_model.dart';
import 'package:app_socio_test/screens/profile/presentation/models/profile_shop_list_item_model.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_shop_list_item.dart';
import 'package:app_socio_test/widgets/profile_avatar.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_base_field.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_action_list_item.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Mi perfil', back: true),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: CommonTheme.defaultBodyPadding,
              child: Column(
                children: [
                  const _ProfileSummary(),
                  SizedBox(height: hJM(4)),
                  const _ProfilePersonalData(),
                  const Divider(height: 0, color: CommonTheme.dividerColor),
                  SizedBox(height: hJM(4)),
                  const _ProfileActionsList(),
                  SizedBox(height: hJM(4)),
                  const _ProfileShopList(),
                  SizedBox(height: hJM(2)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileShopList extends StatelessWidget {
  const _ProfileShopList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mis tiendas', style: CommonTheme.titleLarge),
        SizedBox(height: hJM(2)),
        ProfileShopListItem(
          shop: ProfileShopListItemModel(
            name: 'COVIRAN SUPERMERCADOS S.A.U. (CHANA) (383)',
            address: 'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada',
            phoneNumber: '958281160',
            imageUrl: defaultShopImage,
          ),
        ),
        SizedBox(height: hJM(2)),
        ProfileShopListItem(
          shop: ProfileShopListItemModel(
            name: 'coviran supermercados Nombre tienda ',
            address: 'Dirección tienda 2, granada granada',
            phoneNumber: '999 999 999',
            imageUrl: defaultShopImage,
          ),
        ),
      ],
    );
  }
}

class _ProfilePersonalData extends StatelessWidget {
  const _ProfilePersonalData();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileBaseField(title: 'Razón Social', content: 'COVIRAN SUPERMERCADOS S.A.U. (CHANA) (383)'),
        const Divider(height: 0, color: CommonTheme.dividerColor),
        SizedBox(height: hJM(2)),
        const ProfileBaseField(title: 'Dirección', content: 'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada'),
        const Divider(height: 0, color: CommonTheme.dividerColor),
        SizedBox(height: hJM(2)),
        const ProfileBaseField(title: 'Teléfono', content: '958281160'),
        const Divider(height: 0, color: CommonTheme.dividerColor),
        SizedBox(height: hJM(2)),
        const ProfileBaseField(title: 'Nif/Cif', content: 'A18080796'),
      ],
    );
  }
}

class _ProfileSummary extends StatelessWidget {
  const _ProfileSummary();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileAvatar(userImage: profileAvatarImage),
        SizedBox(height: hJM(2)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
            SizedBox(width: wJM(2)),
            Text(
              'COVIRAN, S.C.A.',
              style: CommonTheme.titleMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        SizedBox(height: hJM(1)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
            SizedBox(width: wJM(2)),
            Text(
              'cschana@coviges.es',
              style: CommonTheme.bodyMedium.copyWith(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
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
        ProfileActionListItem(
          actionItem: ProfileActionItemModel(
            text: 'Portal del socio',
            icon: Icons.web_rounded,
            onTap: () => {},
          ),
        ),
        ProfileActionListItem(
          actionItem: ProfileActionItemModel(
            text: 'e-Factura',
            icon: Icons.blinds_closed_sharp,
            onTap: () => {},
          ),
        ),
      ],
    );
  }
}
