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
          : WelcomeSliderWidget(
              controller.items!,
              onPageChanged: controller.onPageChanged,
            ),
    );
  }

  // 控制栏
  Widget _buildBar() {
    return GetBuilder<WelcomeController>(
      id: "bar",
      init: controller,
      builder: (controller) {
        return <Widget>[
          // 指示标
          SliderIndicatorWidget(
            length: 3,
            currentIndex: controller.currentIndex,
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
      _buildBar(),
      // 控制栏
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
          //appBar: AppBar(title: const Text("welcome")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
