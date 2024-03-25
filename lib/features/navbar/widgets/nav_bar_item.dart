import 'package:app_socio_test/features/navbar/models/nav_bar_item_view_model.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/size_extenseion.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final NavBarItemViewModel navBarItemViewModel;

  const NavBarItem({
    super.key,
    required this.navBarItemViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: wJM(15),
          height: wJM(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            color: navBarItemViewModel.isSelected ? AppColors.green100 : Colors.transparent,
          ),
          child: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: navBarItemViewModel.onPressed,
            icon: Icon(navBarItemViewModel.iconData, size: 0.033.sh, color: navBarItemViewModel.isSelected ? CommonTheme.primaryColor : CommonTheme.textColor),
          ),
        ),
        Text(
          navBarItemViewModel.label,
          style: CommonTheme.labelMedium.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
