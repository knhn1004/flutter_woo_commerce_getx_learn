import 'package:flutter_woo_commerce_getx_learn/common/routers/names.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  _jumpToPage(String routeName) {
    // 欢迎页
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(routeName);
    });
  }

  @override
  void onReady() {
    super.onReady();
    // 删除设备启动图
    //FlutterNativeSplash.remove();
    //_initData();
    if (ConfigService.to.isAlreadyOpen) {
      _jumpToPage(RouteNames.systemMain);
    } else {
      _jumpToPage(RouteNames.systemWelcome);
    }
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
