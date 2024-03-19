import 'package:app_socio_test/features/home/presentation/widgets/home_actions_list.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/home/presentation/widgets/profile_preview.dart';
import 'package:app_socio_test/features/home/presentation/widgets/shops_list.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Home'),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: CommonTheme.defaultBodyPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenidx a la app del socio',
                    style: CommonTheme.titleLarge.copyWith(color: CommonTheme.primaryColorDark),
                  ),
                  SizedBox(height: hJM(4)),
                  const ProfilePreview(),
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
