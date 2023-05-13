import 'package:get/get.dart';

extension IntegerExtensions on int {
  double get w => Get.width * (this / 100);
  double get h => Get.height * (this / 100);
}
