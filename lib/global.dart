import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();

    //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    // 保留启动图

    await Storage().init();

    //Loading();

    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});

    Get.put<WPHttpService>(WPHttpService());
  }
}
