import 'package:setoko/model/item_menu.dart';

class Routes {
  Routes._();
  static const String splash = '/';
  static const String onBoarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String main = '/main';
  static const Map<MenuBottom, String> mainKeys = {
    MenuBottom.HOME: '/main/home',
    MenuBottom.CATEGORIES: '/main/categories',
    MenuBottom.ALLO: '/main/allo',
    MenuBottom.PROMOS: '/main/promos',
    MenuBottom.ACCOUNT: '/main/account',
  };
  static const String detail = '/detail';
  static const String cart = '/cart';
  static const String category = '/category';
  static const String checkout = '/checkout';
  static const String address = '/address';
  static const String payment = '/payment';
  static const String payment2 = '/payment2';
  static const String payment3 = '/payment3';
  static const String payment_confirmed = '/payment_confirmed';
  static const String my_order = '/my_order';
}