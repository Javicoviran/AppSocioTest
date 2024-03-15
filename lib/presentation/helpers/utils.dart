import 'package:flutter/material.dart';

Route fadeTransitionRoute(Widget destination) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => destination,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}
