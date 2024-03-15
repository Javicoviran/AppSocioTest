import 'package:flutter/material.dart';

class ProfileActionItemModel {
  final String text;
  final IconData icon;
  final void Function() onTap;

  ProfileActionItemModel({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}
