import 'package:flutter/material.dart';

class PurchasesMenuViewModel {
  final IconData icon;
  final String text;
  final Widget goTo;

  PurchasesMenuViewModel({
    required this.icon,
    required this.text,
    required this.goTo,
  });
}
