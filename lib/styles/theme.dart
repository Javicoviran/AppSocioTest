import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/helpers/size_extenseion.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTheme {
  static const primaryValue = 0xff61A60E;
  static const primaryColorMaterial = MaterialColor(
    primaryValue,
    {
      50: Color.fromRGBO(0, 149, 59, 1),
      100: Color.fromRGBO(0, 149, 59, 0.9),
      200: Color.fromRGBO(0, 149, 59, 0.8),
      300: Color.fromRGBO(0, 149, 59, 0.7),
      400: Color.fromRGBO(0, 149, 59, 0.6),
      500: Color.fromRGBO(0, 149, 59, 0.5),
      600: Color.fromRGBO(0, 149, 59, 0.4),
      700: Color.fromRGBO(0, 149, 59, 0.3),
      800: Color.fromRGBO(0, 149, 59, 0.2),
      900: Color.fromRGBO(0, 149, 59, 0.1),
    },
  );

  static const primaryColor = Color(primaryValue);
  static const primaryColorDark = AppColors.accent;
  static const secondaryColor = AppColors.antracit;
  static const statusBarColor = AppColors.black;
  static const systemNavigationBarColor = AppColors.black;
  static const backgroundColor = AppColors.grey100;
  static const textColor = AppColors.antracit;
  static const secondaryTextColor = AppColors.gray;
  static const darkButtonTextColor = AppColors.white;
  static const errorColor = AppColors.error;
  static const successColor = AppColors.success;
  static const warningColor = AppColors.warning;
  static const unselectedColor = AppColors.gray;
  static const cancelButtonColor = AppColors.gray;
  static const disabledColor = AppColors.lightGray;
  static const disabledTextColor = AppColors.white;
  static const dividerColor = AppColors.lightGray;
  static const linkColor = AppColors.blue600;
  static const darkLinkColor = AppColors.blue900;
  static const shadowColor = AppColors.darkGray;
  static const shadowColorLight = AppColors.gray;
  static const selectedButtonIndicator = AppColors.olive;
  static const orangeButtonBackground = AppColors.orange300;

  static TextStyle bodySmall = TextStyle(fontSize: 12.sp);
  static TextStyle bodyMedium = TextStyle(fontSize: 14.sp);
  static TextStyle bodyLarge = TextStyle(fontSize: 16.sp);

  static TextStyle labelSmall = TextStyle(fontSize: 11.sp);
  static TextStyle labelMedium = TextStyle(fontSize: 12.sp);
  static TextStyle labelLarge = TextStyle(fontSize: 14.sp);

  static TextStyle titleSmall = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold);
  static TextStyle titleMedium = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold);
  static TextStyle titleLarge = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold);

  static TextStyle headlineSmall = TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold);
  static TextStyle headlineMedium = TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold);
  static TextStyle headlineLarge = TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold);

  static TextStyle displaySmall = TextStyle(fontSize: 36.sp);
  static TextStyle displayMedium = TextStyle(fontSize: 45.sp);
  static TextStyle displayLarge = TextStyle(fontSize: 57.sp);

  static final appBarTextStyle = titleLarge.copyWith(color: darkButtonTextColor);
  static final searchMapAppBarTextStyle = bodyLarge.copyWith(color: darkButtonTextColor);

  static final cardBodyTextStyle = bodyMedium.copyWith(fontWeight: FontWeight.bold, color: textColor);
  static final titleMediumTextStyle = titleMedium.copyWith(fontWeight: FontWeight.bold, color: textColor);
  static final bodyMediumStyle = bodyMedium.copyWith(color: textColor);
  static final bodyMediumLightStyle = bodyMedium.copyWith(color: darkButtonTextColor);
  static final bodyLargeStyle = bodyLarge.copyWith(color: textColor);
  static final formErrorStyle = bodyMedium.copyWith(color: errorColor, decorationColor: errorColor);

  static final ticketHeaderTextStyle = TextStyle(
    fontFamily: 'DecimaMonoX',
    color: AppColors.middleGray,
    fontSize: 14.sp,
  );

  static final ticketTextStyle = TextStyle(
    fontFamily: 'DecimaMonoX',
    color: AppColors.middleGray,
    fontSize: 12.sp,
  );

  static const inputDecoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 1),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 2),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 1),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: errorColor, width: 1),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: disabledColor, width: 1),
    ),
  );

  static const systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: CommonTheme.statusBarColor,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: CommonTheme.statusBarColor,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static final defaultButtonHeight = hJM(6);
  static final defaultButtonWidth = wJM(33);
  static final defaultButtonPadding = EdgeInsets.symmetric(horizontal: wJM(3));

  static final defaultPadding = EdgeInsets.symmetric(horizontal: wJM(5), vertical: hJM(1.5));

  static final defaultImageRadius = BorderRadius.circular(10);

  static final coviBarHeight = 0.04.sh;
  static final appBarHeight = 0.07.sh;
  static final baseBarHeight = 0.07.sh;
}

final appThemeData = ThemeData(
  useMaterial3: true,
  textTheme: TextTheme(
    labelSmall: CommonTheme.labelSmall,
    labelMedium: CommonTheme.labelMedium,
    labelLarge: CommonTheme.labelLarge,
    titleSmall: CommonTheme.titleSmall,
    titleMedium: CommonTheme.titleMedium,
    titleLarge: CommonTheme.titleLarge,
    headlineSmall: CommonTheme.headlineSmall,
    headlineMedium: CommonTheme.headlineMedium,
    headlineLarge: CommonTheme.headlineLarge,
    displaySmall: CommonTheme.displaySmall,
    displayMedium: CommonTheme.displayMedium,
    displayLarge: CommonTheme.displayLarge,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: CommonTheme.primaryColor,
    onPrimary: CommonTheme.primaryColor,
    secondary: CommonTheme.secondaryColor,
    onSecondary: CommonTheme.secondaryColor,
    error: CommonTheme.errorColor,
    onError: CommonTheme.errorColor,
    background: CommonTheme.backgroundColor,
    onBackground: CommonTheme.textColor,
    surface: CommonTheme.backgroundColor,
    onSurface: CommonTheme.textColor,
  ),
  cardColor: CommonTheme.backgroundColor,
  navigationBarTheme: const NavigationBarThemeData(indicatorShape: StadiumBorder()),
  dialogBackgroundColor: CommonTheme.backgroundColor,
  disabledColor: CommonTheme.disabledColor,
  dividerColor: CommonTheme.dividerColor,
  primaryColor: CommonTheme.primaryColor,
  scaffoldBackgroundColor: CommonTheme.backgroundColor,
  shadowColor: AppColors.gray,
  primarySwatch: CommonTheme.primaryColorMaterial,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: const CardTheme(
    color: CommonTheme.backgroundColor,
    elevation: 2.0,
    surfaceTintColor: CommonTheme.backgroundColor,
  ),
  iconTheme: IconThemeData(size: 0.04.sh),
);
