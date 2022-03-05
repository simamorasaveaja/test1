import 'package:flutter/material.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/widget/search_widget.dart';

class HeaderCategoryWidget extends StatefulWidget {
  @override
  _HeaderCategoryWidgetState createState() => _HeaderCategoryWidgetState();
}

class _HeaderCategoryWidgetState extends State<HeaderCategoryWidget> {
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
        ],
      ),
    );
  }
}
