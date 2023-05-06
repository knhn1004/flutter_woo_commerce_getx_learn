import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'index.dart';

/// 主题
class AppTheme {
  static final ThemeData _base = ThemeData(
    textTheme: GoogleFonts.comfortaaTextTheme(),
  );

  /// 亮色
  static ThemeData light = _base.copyWith(
    colorScheme: lightColorScheme,
  );

  /// 暗色
  static ThemeData dark = _base.copyWith(
    colorScheme: darkColorScheme,
  );
}
