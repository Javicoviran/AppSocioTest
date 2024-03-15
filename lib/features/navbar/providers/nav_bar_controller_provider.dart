import 'package:app_socio_test/features/navbar/controllers/nav_bar_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navBarControllerProvider = AutoDisposeStateNotifierProvider<NavBarController, int>(
  (ref) => NavBarController(),
);
