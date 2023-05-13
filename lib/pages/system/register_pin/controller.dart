import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/i18n/locale_keys.dart';
import 'package:get/get.dart';

class RegisterPinController extends GetxController {
  RegisterPinController();

  // ping 文字输入控制器
  TextEditingController pinController = TextEditingController();

  // 表单 key
  GlobalKey formKey = GlobalKey<FormState>();

  // pin 触发提交
  void onPinSubmit(String val) {
    debugPrint("onPinSubmit: $val");
  }

  // 按钮提交
  void onBtnSubmit() {}

  // 按钮返回
  void onBtnBackup() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
    pinController.dispose();
  }

  // 验证 pin
  String? pinValidator(val) {
    // TODO: 从API调用验证
    return val == '111111'
        ? null
        : LocaleKeys.commonMessageIncorrect.trParams({"method": "Pin"});
  }
}
