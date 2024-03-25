import 'package:flutter/material.dart';

class MailboxTabsItemViewModel {
  final IconData iconData;
  final bool isSelected;
  final String text;
  final void Function() onPressed;

  MailboxTabsItemViewModel({
    required this.iconData,
    required this.isSelected,
    required this.text,
    required this.onPressed,
  });
}
