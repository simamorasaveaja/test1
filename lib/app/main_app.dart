import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:setoko/app/store/main_store.dart';
import 'package:setoko/config/env.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/pages/address/address_page.dart';
import 'package:setoko/pages/cart/cart_page.dart';
import 'package:setoko/pages/categories/store/categories_store.dart';
import 'package:setoko/pages/category/category_page.dart';
import 'package:setoko/pages/category/store/category_store.dart';
import 'package:setoko/pages/checkout/checkout_page.dart';
import 'package:setoko/pages/detail/detail_product_page.dart';
import 'package:setoko/pages/home/store/home_store.dart';
import 'package:setoko/pages/login/login_page.dart';
import 'package:setoko/pages/login/store/login_store.dart';
import 'package:setoko/pages/main/main_page.dart';
import 'package:setoko/pages/my_order/my_order_page.dart';
import 'package:setoko/pages/onboarding/onboarding_page.dart';
import 'package:setoko/pages/payment/payment2_page.dart';
import 'package:setoko/pages/payment/payment3_page.dart';
import 'package:setoko/pages/payment/payment_page.dart';
import 'package:setoko/pages/register/register_page.dart';
import 'package:setoko/pages/register/store/register_store.dart';
import 'package:setoko/pages/splash/splash_page.dart';
import 'package:setoko/pages/splash/component/splash_widget.dart';
import 'package:setoko/argument/category_page_argument.dart';
import 'package:setoko/argument/checkout_page_argument.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/firebase_analytics_utils.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Provider(
        create: (_) => MainStore(),
        child: Observer(
          builder: (context) {
            if (!context.watch<MainStore>().isAppSettingsLoaded) {
              return SplashWidget();
            } else {
              return MaterialApp(
                debugShowCheckedModeBanner: Env.data.debugShowCheckedModeBanner,
                debugShowMaterialGrid: Env.data.debugShowMaterialGrid,
                title: Env.data.title,
                locale: Locale(
                  context.watch<MainStore>().language!.code,
                ),
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                initialRoute: Routes.splash,
                onGenerateRoute: (settings) {
                  switch (settings.name) {
                    case Routes.splash:
                      return MaterialPageRoute(builder: (_) {
                        return SplashPage();
                      });
                    case Routes.onBoarding:
                      FA.logEventScreenView(Routes.onBoarding, (OnBoardingPage).toString());
                      return MaterialPageRoute(builder: (_) => OnBoardingPage());
                    case Routes.login:
                      FA.logEventScreenView(Routes.login, (LoginPage).toString());
                      return MaterialPageRoute(builder: (_) => Provider(
                          create: (_) => LoginStore(),
                          child: LoginPage())
                      );
                    case Routes.register:
                      FA.logEventScreenView(Routes.register, (RegisterPage).toString());
                      return MaterialPageRoute(builder: (_) => Provider(
                          create: (_) => RegisterStore(),
                          child: RegisterPage())
                      );
                    case Routes.main:
                      return MaterialPageRoute(builder: (_) => MultiProvider(
                        providers: [
                          Provider<HomeStore>(create: (_) => HomeStore()),
                          Provider<CategoriesStore>(create: (_) => CategoriesStore()),
                        ],
                        child: MainPage(),
                      ));
                    case Routes.detail:
                      FA.logEventScreenView(Routes.detail, (DetailProductPage).toString());
                      return MaterialPageRoute(builder: (_) => DetailProductPage());
                    case Routes.cart:
                      FA.logEventScreenView(Routes.cart, (CartPage).toString());
                      return MaterialPageRoute(builder: (_) => CartPage());
                    case Routes.category:
                      FA.logEventScreenView(Routes.category, (CategoryPage).toString());
                      var args = settings.arguments as CategoryPageArgument;
                      return MaterialPageRoute(builder: (_) => Provider(
                          create: (_) => CategoryStore(),
                          child: CategoryPage(args: args))
                      );
                    case Routes.checkout:
                      FA.logEventScreenView(Routes.checkout, (CheckoutPage).toString());
                      var args = settings.arguments as CheckoutPageArgument;
                      return MaterialPageRoute(builder: (_) => CheckoutPage(args: args));
                    case Routes.payment:
                      FA.logEventScreenView(Routes.payment, (PaymentPage).toString());
                      return MaterialPageRoute(builder: (_) => PaymentPage());
                    case Routes.payment2:
                      FA.logEventScreenView(Routes.payment2, (Payment2Page).toString());
                      return MaterialPageRoute(builder: (_) => Payment2Page());
                    case Routes.payment3:
                      FA.logEventScreenView(Routes.payment3, (Payment3Page).toString());
                      return MaterialPageRoute(builder: (_) => Payment3Page());
                    case Routes.address:
                      FA.logEventScreenView(Routes.address, (AddressPage).toString());
                      return MaterialPageRoute(builder: (_) => AddressPage());
                    case Routes.my_order:
                      FA.logEventScreenView(Routes.my_order, (MyOrderPage).toString());
                      return MaterialPageRoute(builder: (_) => MyOrderPage());
                    default:
                      throw ('No route');
                  }
                },
              );
            }
          },
        ),
      ),
    );
  }
}
