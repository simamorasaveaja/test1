import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';

import 'item_shop_by_coupon_widget.dart';


class ListItemShopByCouponWidget extends StatefulWidget {

  const ListItemShopByCouponWidget({Key? key}) : super(key: key);

  @override
  _ListItemShopByCouponWidgetState createState() => _ListItemShopByCouponWidgetState();
}

class _ListItemShopByCouponWidgetState extends State<ListItemShopByCouponWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenLighter,
      child: Column(
        children: [
          Container(
            height: 20,
            color: white,
          ),
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0, bottom: 19.0),
            child: Row(
              children: [
                Text(S.of(context).shop_smart_with_coupons, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ItemShopByCouponWidget();
              },

            ),
          )
        ],
      ),
    );

  }
}
