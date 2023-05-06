import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/routers/names.dart';
import 'package:flutter_woo_commerce_getx_learn/common/routers/pages.dart';
import 'package:get/route_manager.dart';

import 'common/index.dart';
import 'global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ConfigService.to.isDarkModel ? AppTheme.dark : AppTheme.light,
      initialRoute: RouteNames.stylesStylesIndex,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
// 多语言
      translations: Translation(), // 词典
      localizationsDelegates: Translation.localizationsDelegates, // 代理
      supportedLocales: Translation.supportedLocales, // 支持的语言种类
      locale: ConfigService.to.locale, // 当前语言种类
      fallbackLocale: Translation.fallbackLocale, // 默认语言种类
    );
  }
}
