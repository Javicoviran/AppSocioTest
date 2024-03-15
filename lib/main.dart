import 'dart:async';

import 'package:app_socio_test/app.dart';
import 'package:app_socio_test/screens/login/sig_in.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Future.microtask(
        () => SystemChrome.setSystemUIOverlayStyle(
          CommonTheme.systemUiOverlayStyle,
        ),
      );

      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ]);

      FlutterError.onError = (errorDetails) {
        FlutterError.presentError(errorDetails);
      };
      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    },
    (error, stack) {
      if (kDebugMode) {
        print("\n----------------------------ERROR-----------------------------\n");
        print(error);
        print("\n\n");
        print(stack);
        print("\n--------------------------FIN ERROR---------------------------\n");
      }
    },
  );
}
