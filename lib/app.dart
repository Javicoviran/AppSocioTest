import 'package:app_socio_test/features/navbar/widgets/nav_bar.dart';
import 'package:app_socio_test/presentation/helpers/extensions.dart';
import 'package:app_socio_test/presentation/helpers/myscreenutils.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

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
        // home: const Material(child: SignIn()),
        home: const Material(child: NavBar()),
      ),
    );
  }
}
