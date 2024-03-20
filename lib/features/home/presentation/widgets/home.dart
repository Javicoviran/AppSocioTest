import 'package:app_socio_test/features/home/presentation/widgets/home_actions_list.dart';
import 'package:app_socio_test/features/home/presentation/widgets/home_app_bar.dart';
import 'package:app_socio_test/features/qr_scanner/presentation/widgets/qr_scanner.dart';
import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/home/presentation/widgets/shops_list.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:app_socio_test/presentation/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

// TODO: control focus scope (searchbarr)

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const HomeAppBar(),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: CommonTheme.defaultBodyPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _HomeWelcome(),
                  SizedBox(height: hJM(4)),
                  const _HomeSearchBar(),
                  SizedBox(height: hJM(4)),
                  const HomeActionsList(),
                  SizedBox(height: hJM(4)),
                  const ShopsList(),
                  SizedBox(height: hJM(4)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeSearchBar extends StatelessWidget {
  const _HomeSearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: wJM(4)),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: CommonTheme.lightGreen),
          child: Row(
            children: [
              const Icon(Icons.search_rounded),
              SizedBox(width: wJM(2)),
              SizedBox(
                width: wJM(55),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Búsqueda de artículos', border: InputBorder.none),
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
        ),
        BaseButton(
          icon: Icon(Icons.camera_alt_rounded, size: hJM(4), color: CommonTheme.backgroundColor),
          backgroundColor: CommonTheme.green800,
          width: wJM(13),
          height: wJM(13),
          onClick: () => Navigator.push(context, fadeTransitionRoute(const QRScanner())),
        ),
      ],
    );
  }
}

class _HomeWelcome extends StatelessWidget {
  const _HomeWelcome();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bienveidx,', style: CommonTheme.bodyLarge),
            SizedBox(
              width: wJM(65),
              child: Text(
                'María Rabaneda Sierra',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CommonTheme.titleLarge,
              ),
            ),
          ],
        ),
        const Spacer(),
        ProfileAvatar(userImage: profileAvatarImage, size: wJM(17)),
      ],
    );
  }
}
