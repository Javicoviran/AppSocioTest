import 'package:app_socio_test/helpers/extensions.dart';
import 'package:app_socio_test/helpers/myscreenutils.dart';
import 'package:app_socio_test/screens/login/log_out.dart';
import 'package:app_socio_test/screens/login/login.dart';
import 'package:app_socio_test/screens/login/sig_in.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);
    return SafeArea(
      child: MaterialApp(
        builder: (context, widget) {
          return MediaQuery(
            data: context.media.copyWith(textScaler: const TextScaler.linear(1)),
            child: widget!,
          );
        },
        title: 'App Socios Prueba',
        debugShowCheckedModeBanner: false,
        theme: appThemeData,
        home: const Material(child: SignIn()),
      ),
    );
  }
}
