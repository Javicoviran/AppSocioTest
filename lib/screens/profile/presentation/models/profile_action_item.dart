import 'package:flutter/material.dart';

class ProfileActionItem {
  final String text;
  final IconData icon;
  final void Function() onTap;

  ProfileActionItem({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}
