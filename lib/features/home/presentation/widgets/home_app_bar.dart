import 'package:app_socio_test/features/navbar/helpers/constant.dart';
import 'package:app_socio_test/features/navbar/providers/nav_bar_controller_provider.dart';
import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CommonTheme.backgroundColor,
        border: Border.all(width: 0, color: Colors.transparent),
      ),
      height: CommonTheme.appBarHeight,
      child: Row(
        children: [
          SizedBox(width: wJM(3)),
          Image.asset(
            logoCoviranColorAsset,
            alignment: Alignment.center,
            fit: BoxFit.contain,
            height: hJM(3),
          ),
          const Spacer(),
          const _HomeAppBarIcons(),
          SizedBox(width: wJM(3)),
        ],
      ),
    );
  }
}

class _HomeAppBarIcons extends ConsumerWidget {
  const _HomeAppBarIcons();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        BaseButton(
          icon: Icon(Icons.notifications_none_rounded, size: hJM(5)),
          width: CommonTheme.appBarHeight,
          height: CommonTheme.appBarHeight,
          backgroundColor: CommonTheme.backgroundColor,
          onClick: () => ref.read(navBarControllerProvider.notifier).changeTab(mailTab),
        ),
        SizedBox(width: wJM(2)),
        BaseButton(
          icon: Icon(Icons.shopping_cart_outlined, size: hJM(5)),
          width: CommonTheme.appBarHeight,
          height: CommonTheme.appBarHeight,
          backgroundColor: CommonTheme.backgroundColor,
          onClick: () {},
        ),
      ],
    );
  }
}
