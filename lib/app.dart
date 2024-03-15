import 'package:app_socio_test/helpers/extensions.dart';
import 'package:app_socio_test/helpers/myscreenutils.dart';
import 'package:app_socio_test/screens/more_options/presentation/widgets/more_options.dart';
import 'package:app_socio_test/styles/theme.dart';
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
        home: const Material(child: MoreOptions()),
      ),
    );
  }
}
