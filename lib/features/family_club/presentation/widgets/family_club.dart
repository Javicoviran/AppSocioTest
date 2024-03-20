import 'package:app_socio_test/features/family_club/presentation/widgets/winners.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

class FamilyClub extends StatelessWidget {

  const FamilyClub({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Body(
        appBar: BaseAppBar(
          title: "Club Familia",
          back: true,
        ),
        child: Winners(),
      ),
    ));
  }
}
