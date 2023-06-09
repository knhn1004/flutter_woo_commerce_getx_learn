import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/widgets/image.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';
import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const ImageWidget.asset(
      AssetsImages.splashJpg,
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return _buildView();
      },
    );
  }
}
