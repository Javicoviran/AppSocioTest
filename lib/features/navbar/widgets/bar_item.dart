import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/helpers/size_extenseion.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class BarItem extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final void Function() onPressed;
  final String label;

  const BarItem({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: wJM(17),
          height: wJM(12),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            color: isSelected ? AppColors.grey400 : Colors.transparent,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(iconData, size: 0.033.sh, color: isSelected ? CommonTheme.backgroundColor : CommonTheme.textColor),
          ),
        ),
        Text(
          label,
          style: CommonTheme.labelMedium.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
