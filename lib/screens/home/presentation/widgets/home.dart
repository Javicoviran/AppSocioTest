import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/home/presentation/widgets/profile_preview.dart';
import 'package:app_socio_test/screens/home/presentation/widgets/shops_list.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/body.dart';
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
                  const ShopsList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
