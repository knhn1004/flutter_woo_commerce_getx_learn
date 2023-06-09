import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);
  // slider
  Widget _buildSlider() {
    return GetBuilder<WelcomeController>(
      id: "slider",
      init: controller,
      builder: (controller) => controller.items == null
          ? const SizedBox()
          : AspectRatio(
              aspectRatio: MediaQuery.of(Get.context!).size.width / 800,
              child: WelcomeSliderWidget(
                controller.items!,
                onPageChanged: controller.onPageChanged,
                carouselController: controller.carouselController,
              ),
            ),
    );
  }

  // 控制栏
  // bar
  // skip + indicator + next
  Widget _buildBar() {
    return GetBuilder<WelcomeController>(
      id: "bar",
      init: controller,
      builder: (controller) {
        return controller.isShowStart
            ?
            // 开始
            ButtonWidget.primary(
                LocaleKeys.welcomeStart.tr,
                onTap: controller.onToMain,
              ).tight(
                width: double.infinity,
                height: 6.h,
              )
            : <Widget>[
                // 跳过
                ButtonWidget.text(
                  LocaleKeys.welcomeSkip.tr,
                  onTap: controller.onToMain,
                ),
                // 指示标
                SliderIndicatorWidget(
                  length: 3,
                  currentIndex: controller.currentIndex,
                ),
                // 下一页
                ButtonWidget.text(
                  LocaleKeys.welcomeNext.tr,
                  onTap: controller.onNext,
                ),
              ].toRow(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              );
      },
    );
  }

// 内容页
  Widget _buildView() {
    return <Widget>[
      // slider切换
      _buildSlider(),
      // 控制栏
      _buildBar(),
    ]
        .toColumn(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        )
        .paddingAll(AppSpace.page);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
