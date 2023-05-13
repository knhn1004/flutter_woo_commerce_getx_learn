import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:flutter_woo_commerce_getx_learn/common/routers/names.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  List<WelcomeModel>? items;

  // 当前位置
  int currentIndex = 0;

  bool isShowStart = false; // 是否显示 Start
  CarouselController carouselController = CarouselController(); // slider 控制器

  // 当前位置发生改变
  void onPageChanged(int index) {
    currentIndex = index;
    isShowStart = currentIndex == items!.length - 1;
    update(['slider', 'bar']);
  }

  // 去首页
  void onToMain() {
    Get.offAllNamed(RouteNames.systemMain);
  }

  // 下一个
  void onNext() {
    carouselController.nextPage();
  }

  _initData() {
    items = [
      WelcomeModel(
        image: AssetsImages.welcome_1Png,
        title: LocaleKeys.welcomeOneTitle.tr,
        desc: LocaleKeys.welcomeOneDesc.tr,
      ),
      WelcomeModel(
        image: AssetsImages.welcome_2Png,
        title: LocaleKeys.welcomeTwoTitle.tr,
        desc: LocaleKeys.welcomeTwoDesc.tr,
      ),
      WelcomeModel(
        image: AssetsImages.welcome_3Png,
        title: LocaleKeys.welcomeThreeTitle.tr,
        desc: LocaleKeys.welcomeThreeDesc.tr,
      ),
    ];
    update(["slider"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();

    ConfigService().setAlreadyOpen();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
