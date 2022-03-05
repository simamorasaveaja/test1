import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/debug/debug_widget.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class HeaderWidget extends StatefulWidget {

  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenPrimary,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  showDebugSetting(context);
                },
                child: Image(
                  image: AssetImage(getSourceByNameImage('ic_logo_setoko')),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.cart);
                },
                child: Image(
                  image: AssetImage(getSourceByNameImage('ic_chat_white')),
                ),
              ),
              SizedBox(width: 22,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.cart);
                },
                child: Image(
                  image: AssetImage(getSourceByNameImage('ic_shopping_chart')),
                ),
              ),
              SizedBox(width: 22,),
              Image(
                image: AssetImage(getSourceByNameImage('ic_notification')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showDebugSetting(BuildContext context) {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DebugWidget(),
    );
  }
}
