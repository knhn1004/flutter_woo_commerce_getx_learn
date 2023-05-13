import 'package:flutter_woo_commerce_getx_learn/common/routers/names.dart';
import 'package:flutter_woo_commerce_getx_learn/common/services/config.dart';
import 'package:get/get.dart';

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

    /// 只有第一次进入才会显示欢迎页
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
