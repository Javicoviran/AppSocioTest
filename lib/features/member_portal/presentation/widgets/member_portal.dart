import 'package:app_socio_test/features/member_portal/presentation/helpers/constants.dart';
import 'package:app_socio_test/features/member_portal/presentation/widgets/member_portal_view.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MemberPortal extends ConsumerWidget {
  const MemberPortal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Portal del socio'),
          child: MemberPortalView(
            url: (Uri.parse(memberPortalUrl)),
          ),
        ),
      ),
    );
  }
}
