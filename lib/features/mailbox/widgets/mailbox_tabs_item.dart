import 'package:app_socio_test/presentation/helpers/size_extenseion.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class MailboxTabsItem extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final String text;
  final void Function() onPressed;

  const MailboxTabsItem({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 0.033.sh, color: isSelected ? AppColors.green900 : AppColors.green200),
          Text(
            text,
            style: CommonTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
