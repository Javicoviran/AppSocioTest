import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/size_extenseion.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final void Function() onPressed;
  final String label;

  const NavBarItem({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.onPressed,
    required this.label,
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
            color: isSelected ? AppColors.lightGreen100 : Colors.transparent,
          ),
          child: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: onPressed,
            icon: Icon(iconData, size: 0.033.sh, color: isSelected ? CommonTheme.primaryColor : CommonTheme.textColor),
          ),
        ),
        Text(
          label,
          style: CommonTheme.labelMedium.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
