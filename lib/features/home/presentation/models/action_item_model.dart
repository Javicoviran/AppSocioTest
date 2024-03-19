import 'package:flutter/material.dart';

class ActionItemModel {
  final String text;
  final IconData icon;
  final void Function() onTap;

  ActionItemModel({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}
