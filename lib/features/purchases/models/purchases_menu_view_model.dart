import 'package:flutter/material.dart';

class PurchasesMenuViewModel {
  final IconData icon;
  final String text;
  final Widget onPressed;

  PurchasesMenuViewModel({
    required this.icon,
    required this.text,
    required this.onPressed,
  });
}
