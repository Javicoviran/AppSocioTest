import 'package:app_socio_test/helpers/size_extenseion.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class BarItem extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final void Function() onPressed;

  const BarItem({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? AppColors.grey400 : Colors.transparent,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconData, size: 0.033.sh, color: isSelected ? CommonTheme.backgroundColor : CommonTheme.textColor),
      ),
    );
  }
}
