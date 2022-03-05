import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/model/item_menu.dart';
import 'package:setoko/pages/categories/categories_page.dart';
import 'package:setoko/pages/home/home_page.dart';
import 'package:setoko/pages/payment/payment_page.dart';
import 'package:setoko/pages/profile/profile_page.dart';
import 'package:setoko/pages/promo/promo_page.dart';
import 'package:setoko/utils/firebase_analytics_utils.dart';

import 'component/menu_bottom_widget.dart';

class MainPage extends StatefulWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  MenuBottom _currentTab = MenuBottom.HOME;

  Map<MenuBottom, Widget> _navigatorPage = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Stack(children: <Widget>[
                _buildOffstageNavigator(MenuBottom.HOME),
                _buildOffstageNavigator(MenuBottom.CATEGORIES),
                _buildOffstageNavigator(MenuBottom.ALLO),
                _buildOffstageNavigator(MenuBottom.PROMOS),
                _buildOffstageNavigator(MenuBottom.ACCOUNT),
              ]),
            ),
          ),
          MenuBottomWidget(
            onTabMenu: (menu) {
              setState(() {
                if (_currentTab == menu) {
                  //Do Something
                } else {
                  FA.logEventScreenView(Routes.mainKeys[menu]!, (_navigatorPage[menu]!).toString());
                  _currentTab = menu;
                }
              });
            },
          )
        ],
      ),
    );
  }

  Widget _buildOffstageNavigator(MenuBottom menu) {
    return Offstage(
        offstage: _currentTab != menu,
        child: _navigatorPage[menu]);
  }

  @override
  void initState() {
    super.initState();
    FA.logEventScreenView(Routes.mainKeys[MenuBottom.HOME]!, (HomePage).toString());
    _navigatorPage = _navigatorPage = {
      MenuBottom.HOME: HomePage(),
      MenuBottom.CATEGORIES: CategoriesPage(),
      MenuBottom.ALLO: PaymentPage(),
      MenuBottom.PROMOS: PromoPage(),
      MenuBottom.ACCOUNT: ProfilePage(),
    };
  }
}
