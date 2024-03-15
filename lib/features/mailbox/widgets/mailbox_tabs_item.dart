import 'package:app_socio_test/presentation/helpers/size_extenseion.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class MailboxTabsItem extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final void Function() onPressed;

  const MailboxTabsItem({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isSelected
            ? const Border(
                bottom: BorderSide(
                  color: AppColors.green800,
                  width: 4,
                ),
              )
            : null,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconData, size: 0.033.sh, color: AppColors.green800),
      ),
    );
  }
}
