
import 'package:flutter/material.dart';

extension ContextAccess on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  MediaQueryData get media => MediaQuery.of(this);

  MediaQueryData? get maybeMedia => MediaQuery.maybeOf(this);

  double get sizeH => media.size.height;

  double get sizeW => media.size.width;

  ScaffoldState get scaffold => Scaffold.of(this);

  void get pop => Navigator.pop(this);
}