import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/pages/profile/component/account_guest_widget.dart';
import 'package:setoko/pages/profile/component/account_widget.dart';
import 'package:setoko/pages/profile/component/logout_widget.dart';
import 'package:setoko/pages/profile/component/menu_order_widget.dart';
import 'package:setoko/pages/profile/component/menu_widget.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/local_preference.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverAppBar(
          backgroundColor: white,
          // Needed to avoid auto-switching status bar color
          elevation: 0,
          floating: true,
          centerTitle: true,
          title: Text(S.of(context).account,
            style: TextStyle(color: black, fontWeight: FontWeight.normal, fontSize: 18), textAlign: TextAlign.center,),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
              if (LocalPreference.isLogin()) AccountWidget() else AccountGuestWidget(),
              if(LocalPreference.isLogin())
              MenuOrderWidget(),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text('My Account', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17),),
              ),
              Column(
                children:
                  List.generate(menuAccount.length,(index){
                    return MenuWidget(
                    title: menuAccount[index].title,
                    subTitle: menuAccount[index].subTitle,
                    imgSourceByString: menuAccount[index].imgSourceByString,
                    );
                  })
              ),
              Container(
                height: 16.0,
                color: grayLight,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text('About', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17),),
              ),
              Column(
                  children:
                  List.generate(menuAbout.length,(index){
                    return MenuWidget(
                      title: menuAbout[index].title,
                      subTitle: menuAbout[index].subTitle,
                      imgSourceByString: menuAbout[index].imgSourceByString,
                    );
                  })
              ),
              Container(
                height: 16.0,
                color: grayLight,
              ),
              LogoutWidget(),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: grayLight,
                width: double.infinity,
                child: Text('V 1.0.0', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15),),
              ),
            ]),
        )
      ],
    );
  }
}

class Menu {
  final String title;
  final String subTitle;
  final String imgSourceByString;

  Menu({required this.title, required this.subTitle, required this.imgSourceByString});
}

final List<Menu> menuAccount = [
  Menu(
    title: 'My Profile',
    subTitle: 'See your personal information here.',
    imgSourceByString: 'assets/images/ic_account.png',
  ),
  Menu(
    title: 'My Addresses',
    subTitle: 'Add or edit your delivery address.',
    imgSourceByString: 'assets/images/ic_addreas.png',
  ),
  Menu(
    title: 'Debit/Credit Card',
    subTitle: 'Add or edit your payment method',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'My Wishlist',
    subTitle: 'See product on your wishlist',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Subscriptions',
    subTitle: 'Manage your subscription lists & products.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Gift Registry',
    subTitle: 'Create a gift list for your special day.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Security',
    subTitle: 'Manage your personal information',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Notification Settings',
    subTitle: 'Customize how you receive notifications.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
];

final List<Menu> menuAbout = [
  Menu(
    title: 'Help Center',
    subTitle: 'Need help? This is the right place to go.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Why Shopping with Us?',
    subTitle: 'Good things you’ll find in Setoko.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Privacy Policy',
    subTitle: 'A promise that your privacy is safe with us.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Language',
    subTitle: 'Select your app language here.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
  Menu(
    title: 'Terms & Conditions',
    subTitle: 'Read this before using our services.',
    imgSourceByString: 'assets/images/ic_help_center.png',
  ),
];