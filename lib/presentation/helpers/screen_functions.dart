import 'dart:io';

import 'package:app_socio_test/presentation/helpers/myscreenutils.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';

/* Calculates the percentage of the screen height to be occupied excluding the space of the AppBar */
double hJM(double percentage) {
  final platform = Platform.isAndroid;
  return platform
      ? ((MyScreenUtil().screenHeight - CommonTheme.baseBarHeight - MyScreenUtil().statusBarHeight - CommonTheme.coviBarHeight - CommonTheme.appBarHeight) * percentage) / 100
      : ((MyScreenUtil().screenHeight - CommonTheme.baseBarHeight - MyScreenUtil().statusBarHeight - CommonTheme.coviBarHeight - CommonTheme.appBarHeight) * percentage) / 100;
}

/* Calculates the percentage of the screen width to be occupied */
double wJM(double percentage) => (MyScreenUtil().screenWidth * percentage) / 100;
