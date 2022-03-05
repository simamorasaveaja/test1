import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/widget/search_widget.dart';

class HeaderDetailOrderWidget extends StatefulWidget {
  @override
  _HeaderDetailOrderWidgetState createState() => _HeaderDetailOrderWidgetState();
}

class _HeaderDetailOrderWidgetState extends State<HeaderDetailOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            width: 48,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image(
                width: 24,
                height: 24,
                image: AssetImage(getSourceByNameImage('ic_nav_back')),
              ),
            ),
          ),
          Expanded(
            child: SearchWidget(
              hintText: S.of(context).search_products,
              onSearchChange: (value) {

              },
            ),
          ),
          Container(
            width: 48,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image(
                width: 24,
                height: 24,
                image: AssetImage(getSourceByNameImage('ic_share')),
              ),
            ),
          ),
          Container(
            width: 48,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image(
                width: 24,
                height: 24,
                image: AssetImage(getSourceByNameImage('ic_shopping_card_gray')),
              ),
            ),
          ),
          Container(
            width: 48,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image(
                width: 24,
                height: 24,
                image: AssetImage(getSourceByNameImage('ic_options')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
