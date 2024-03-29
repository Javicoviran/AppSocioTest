import 'package:app_socio_test/features/navbar/helpers/constant.dart';
import 'package:app_socio_test/features/navbar/models/nav_bar_item_view_model.dart';
import 'package:app_socio_test/features/navbar/providers/nav_bar_controller_provider.dart';
import 'package:app_socio_test/features/navbar/widgets/nav_bar_item.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: CommonTheme.navBarColor,
      height: CommonTheme.baseBarHeight,
      child: Row(
        children: List.generate(
          navBarItems.length,
          (index) => Expanded(
            child: NavBarItem(
              navBarItemViewModel: NavBarItemViewModel(
                iconData: ref.watch(navBarControllerProvider) == index ? navBarItemsSelected.elementAt(index).iconData : navBarItems.elementAt(index).iconData,
                isSelected: ref.watch(navBarControllerProvider) == index,
                label: labels.elementAt(index),
                onPressed: () => ref.read(navBarControllerProvider.notifier).changeTab(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
