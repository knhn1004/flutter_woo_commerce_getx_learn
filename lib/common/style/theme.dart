import 'package:flutter/material.dart';

import 'index.dart';

/// 主题
class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
    textTheme: light.textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
  );
}
