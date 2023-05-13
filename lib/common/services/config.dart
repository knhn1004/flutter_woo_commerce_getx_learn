import 'dart:ui';

import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../index.dart';

/// 配置服务
class ConfigService extends GetxService {
  // 这是一个单例写法
  static ConfigService get to => Get.find();
  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';

  Locale locale = PlatformDispatcher.instance.locale;

  // 初始化
  Future<ConfigService> init() async {
    await getPlatform();
    return this;
  }

  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  // 初始语言
  void initLocale() {
    var langCode = Storage().getString(Constants.storageLanguageCode);
    if (langCode.isEmpty) return;
    var index = Translation.supportedLocales.indexWhere((element) {
      return element.languageCode == langCode;
    });
    if (index < 0) return;
    locale = Translation.supportedLocales[index];
  }

  // 更改语言
  void onLocaleUpdate(Locale value) {
    locale = value;
    Get.updateLocale(value);
    Storage().setString(Constants.storageLanguageCode, value.languageCode);
  }

  // 主题
  final RxBool _isDarkMode = Get.isDarkMode.obs;
  bool get isDarkMode => _isDarkMode.value;

  // 切换 theme
  Future<void> switchThemeModel() async {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeTheme(
      _isDarkMode.value == true ? AppTheme.dark : AppTheme.light,
    );
    await Storage().setString(Constants.storageThemeCode,
        _isDarkMode.value == true ? "dark" : "light");
  }

  // 初始 theme
  void initTheme() {
    var themeCode = Storage().getString(Constants.storageThemeCode);
    _isDarkMode.value = themeCode == "dark" ? true : false;
    Get.changeTheme(
      themeCode == "dark" ? AppTheme.dark : AppTheme.light,
    );
  }

  // 是否首次打开
  bool get isAlreadyOpen => Storage().getBool(Constants.storageAlreadyOpen);

// 标记已打开app
  void setAlreadyOpen() {
    Storage().setBool(Constants.storageAlreadyOpen, true);
  }

  @override
  void onReady() {
    super.onReady();
    getPlatform();
    initLocale();
    initTheme();
  }
}
