import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/routers/names.dart';
import 'package:flutter_woo_commerce_getx_learn/common/routers/observers.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/cart/apply_promo_code/index.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/system/user_agreement/index.dart';
import 'package:get/get.dart';

import '../../pages/cart/buy_done/view.dart';
import '../../pages/cart/buy_now/view.dart';
import '../../pages/cart/cart_index/view.dart';
import '../../pages/goods/category/view.dart';
import '../../pages/goods/home/view.dart';
import '../../pages/goods/product_details/view.dart';
import '../../pages/goods/product_list/view.dart';
import '../../pages/my/address_edit/view.dart';
import '../../pages/my/address_list/view.dart';
import '../../pages/my/language/view.dart';
import '../../pages/my/my_index/view.dart';
import '../../pages/my/order_details/view.dart';
import '../../pages/my/order_list/view.dart';
import '../../pages/my/profile_edit/view.dart';
import '../../pages/my/theme/view.dart';
import '../../pages/search/search_filter/view.dart';
import '../../pages/search/search_index/view.dart';
import '../../pages/styles/bottom_sheet/view.dart';
import '../../pages/styles/buttons/view.dart';
import '../../pages/styles/carousel/view.dart';
import '../../pages/styles/components/view.dart';
import '../../pages/styles/group_list/view.dart';
import '../../pages/styles/icon/view.dart';
import '../../pages/styles/inputs/view.dart';
import '../../pages/styles/other/view.dart';
import '../../pages/styles/styles_index/view.dart';
import '../../pages/styles/text/view.dart';
import '../../pages/styles/text_form/view.dart';
import '../../pages/styles/image/view.dart';
import '../../pages/system/login/view.dart';
import '../../pages/system/main/view.dart';
import '../../pages/system/register/view.dart';
import '../../pages/system/register_pin/view.dart';
import '../../pages/system/splash/view.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static List<GetPage> list = [
    GetPage(
      name: RouteNames.cartApplyPromoCode,
      page: () => const ApplyPromoCodePage(),
    ),
    GetPage(
      name: RouteNames.cartBuyDone,
      page: () => const BuyDonePage(),
    ),
    GetPage(
      name: RouteNames.cartBuyNow,
      page: () => const BuyNowPage(),
    ),
    GetPage(
      name: RouteNames.cartCartIndex,
      page: () => const CartIndexPage(),
    ),
    GetPage(
      name: RouteNames.goodsCategory,
      page: () => const CategoryPage(),
    ),
    GetPage(
      name: RouteNames.goodsHome,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteNames.goodsProductDetails,
      page: () => const ProductDetailsPage(),
    ),
    GetPage(
      name: RouteNames.goodsProductList,
      page: () => const ProductListPage(),
    ),
    GetPage(
      name: RouteNames.myAddressEdit,
      page: () => const AddressEditPage(),
    ),
    GetPage(
      name: RouteNames.myAddressList,
      page: () => const AddressListPage(),
    ),
    GetPage(
      name: RouteNames.myLanguage,
      page: () => const LanguagePage(),
    ),
    GetPage(
      name: RouteNames.myMyIndex,
      page: () => const MyIndexPage(),
    ),
    GetPage(
      name: RouteNames.myOrderDetails,
      page: () => const OrderDetailsPage(),
    ),
    GetPage(
      name: RouteNames.myOrderList,
      page: () => const OrderListPage(),
    ),
    GetPage(
      name: RouteNames.myProfileEdit,
      page: () => const ProfileEditPage(),
    ),
    GetPage(
      name: RouteNames.myTheme,
      page: () => const ThemePage(),
    ),
    GetPage(
      name: RouteNames.searchSearchFilter,
      page: () => const SearchFilterPage(),
    ),
    GetPage(
      name: RouteNames.searchSearchIndex,
      page: () => const SearchIndexPage(),
    ),
    GetPage(
      name: RouteNames.stylesBottomSheet,
      page: () => const BottomSheetPage(),
    ),
    GetPage(
      name: RouteNames.stylesButtons,
      page: () => const ButtonsPage(),
    ),
    GetPage(
      name: RouteNames.stylesCarousel,
      page: () => const CarouselPage(),
    ),
    GetPage(
      name: RouteNames.stylesComponents,
      page: () => const ComponentsPage(),
    ),
    GetPage(
      name: RouteNames.stylesGroupList,
      page: () => const GroupListPage(),
    ),
    GetPage(
      name: RouteNames.stylesInputs,
      page: () => const InputsPage(),
    ),
    GetPage(
      name: RouteNames.stylesOther,
      page: () => const OtherPage(),
    ),
    GetPage(
      name: RouteNames.stylesStylesIndex,
      page: () => const StylesIndexPage(),
    ),
    GetPage(
      name: RouteNames.stylesText,
      page: () => const TextPage(),
    ),
    GetPage(
      name: RouteNames.stylesTextForm,
      page: () => const TextFormPage(),
    ),
    GetPage(
      name: RouteNames.stylesIcon,
      page: () => const IconPage(),
    ),
    GetPage(
      name: RouteNames.stylesImage,
      page: () => const ImagePage(),
    ),
    GetPage(
      name: RouteNames.systemLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteNames.systemMain,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteNames.systemRegister,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: RouteNames.systemRegisterPin,
      page: () => const RegisterPinPage(),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.systemUserAgreement,
      page: () => const UserAgreementPage(),
    ),
  ];
}
