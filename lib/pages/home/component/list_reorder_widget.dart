import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';

import 'item_reorder_widget.dart';

class ListReorderWidget extends StatefulWidget {

  const ListReorderWidget({Key? key}) : super(key: key);

  @override
  _ListReorderWidgetState createState() => _ListReorderWidgetState();

}

class _ListReorderWidgetState extends State<ListReorderWidget> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: grayLighter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(S.of(context).reorder_your_past_purchases, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 92,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemReorderWidget();
              },

            ),
          )
        ],
      ),
    );
  }

}
