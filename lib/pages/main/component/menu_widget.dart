import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/model/item_menu.dart';
import 'package:setoko/utils/colors.dart';

class MenuWidget extends StatelessWidget {
  final ItemMenu itemMenu;

  const MenuWidget({Key? key, required this.itemMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 80,
      padding: const EdgeInsets.only(top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(itemMenu.getSource()),
            width: 26,
            height: 26,
          ),
          SizedBox(
            height: 6,
          ),
          Text(getTitleByLocalization(S.of(context), itemMenu.id), style: TextStyle(color: itemMenu.isActive == true ? greenPrimary : blackLighter, fontWeight: FontWeight.normal, fontSize: 10),)
        ],
      ),
    );

  }

  String getTitleByLocalization(S localization, MenuBottom id) {
    switch(id) {
      case MenuBottom.HOME:
        return localization.menu_home;
      case MenuBottom.CATEGORIES:
        return localization.menu_categories;
      case MenuBottom.ALLO:
        return localization.menu_allo;
      case MenuBottom.PROMOS:
        return localization.menu_promos;
      case MenuBottom.ACCOUNT:
        return localization.menu_account;
      default:
        return '';
    }
  }
}