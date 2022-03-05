import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setoko/model/item_menu.dart';
import 'package:setoko/pages/main/component/menu_widget.dart';
import 'package:setoko/utils/colors.dart';

class MenuBottomWidget extends StatefulWidget {

  final Function(MenuBottom) onTabMenu;

  const MenuBottomWidget({Key? key,required this.onTabMenu}) : super(key: key);

  @override
  _MenuBottomWidgetState createState() => _MenuBottomWidgetState();
}

class _MenuBottomWidgetState extends State<MenuBottomWidget> {
  int currentPosition = 0;
  List<ItemMenu> _list = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            color: grayLighter,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(int i = 0 ; i < _list.length ; i++)
                Expanded(
                child: InkWell(
                  onTap: () async {
                    _onTabMenu(i);
                  },
                  child: MenuWidget(
                    itemMenu: _list[i],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _list = [
      ItemMenu(
          id: MenuBottom.HOME,
          isActive: true,
          image: 'ic_menu_home',
          imageActive: 'ic_menu_home_active',
      ),
      ItemMenu(
          id: MenuBottom.CATEGORIES,
          isActive: false,
          image: 'ic_menu_category',
          imageActive: 'ic_menu_category_active',
      ),
      ItemMenu(
          id: MenuBottom.ALLO,
          isActive: false,
          image: 'ic_menu_allo',
          imageActive: 'ic_menu_allo',
      ),
      ItemMenu(
          id: MenuBottom.PROMOS,
          isActive: false,
          image: 'ic_menu_promo',
          imageActive: 'ic_menu_promo_active',
      ),
      ItemMenu(
          id: MenuBottom.ACCOUNT,
          isActive: false,
          image: 'ic_menu_account',
          imageActive: 'ic_menu_account_active',
      ),
    ];
  }

  void _onTabMenu(int position) async {
    widget.onTabMenu(_list[position].id);
    setState(() {
      _list[currentPosition].isActive = false;
      _list[position].isActive = true;
      currentPosition = position;
    });
  }
}


