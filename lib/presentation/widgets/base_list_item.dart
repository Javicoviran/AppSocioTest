import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? iconColor;
  final void Function() onTap;
  final bool divider;

  const BaseListItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.iconColor,
    this.divider = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: CommonTheme.disabledColor,
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: CommonTheme.defaultBodyPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, size: hJM(4.5), color: iconColor ?? CommonTheme.green800),
                SizedBox(width: wJM(4)),
                Text(
                  text,
                  style: CommonTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          if (divider)
            const Divider(
              height: 0,
              color: CommonTheme.dividerColor,
            ),
        ],
      ),
    );
  }
}
