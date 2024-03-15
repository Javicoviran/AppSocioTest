import 'package:app_socio_test/features/navbar/helpers/constant.dart';
import 'package:app_socio_test/features/navbar/providers/nav_bar_controller_provider.dart';
import 'package:app_socio_test/features/navbar/widgets/bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBar extends ConsumerWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (_) async {
          final backRes = ref.read(navBarControllerProvider.notifier).back();
          if (backRes == null) return;
          if (backRes) return;
        },
        child: Scaffold(
          extendBody: true,
          body: navBarPages.elementAt(ref.watch(navBarControllerProvider)),
          bottomNavigationBar: const Bar(),
        ),
      ),
    );
  }
}
