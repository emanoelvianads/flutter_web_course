import 'package:flutter/material.dart';

extension UtilitiesExtension on BuildContext {
  /// Media Query
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Size and Width
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get ratio => MediaQuery.of(this).devicePixelRatio;
  Orientation get orientation => MediaQuery.of(this).orientation;
  double get statusBar => MediaQuery.of(this).padding.top;
  double get appBarHeight => kToolbarHeight;

  /// Theme
  TextTheme get text => Theme.of(this).textTheme;
  ColorScheme get color => Theme.of(this).colorScheme;
}
