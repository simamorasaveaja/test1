import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';

import 'item_inspiration_widget.dart';

class ListItemInspirationWidget extends StatefulWidget {

  const ListItemInspirationWidget({Key? key}) : super(key: key);

  @override
  _ListItemInspirationWidgetState createState() => _ListItemInspirationWidgetState();
}

class _ListItemInspirationWidgetState extends State<ListItemInspirationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: yellowLighter,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0, bottom: 19.0),
            child: Row(
              children: [
                Text(S.of(context).your_daily_dose_of_inspirations, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 15),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ItemInspirationWidget();
              },

            ),
          )
        ],
      ),
    );

  }
}
