import 'package:flutter/material.dart';
import 'package:setoko/model/item_product.dart';

import 'component/cart_all_widget.dart';
import 'component/cart_widget.dart';
import 'component/item_cart_by_merchant_widget.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<List<ItemProduct>> items = [
    [
      ItemProduct(check: false),
      ItemProduct(check: false),
    ],
    [
      ItemProduct(check: false),
      ItemProduct(check: false),
      ItemProduct(check: false),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverAppBar(
                    backgroundColor: Colors.white,
                    // Needed to avoid auto-switching status bar color
                    elevation: 0,
                    floating: true,
                    centerTitle: true,
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios_outlined, color: Colors.black87),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    title: Text('SHOPPING CART', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),)
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        CartAllWidget(
                          onTabCheck: (check) {
                            setState(() {
                              _setStatusCheckoutAll(check);
                            });
                          },
                          items: items,
                        ),
                        for (int i = 0 ; i < items.length ; i++)
                        ItemCartByMerchantWidget(
                          itemProduct: items[i],
                          onCheckTab: (position, value) {
                            setState(() {
                              if (position == -1) {
                                for (int j = 0 ; j < items[i].length; j++) {
                                  items[i][j].check = value;
                                }
                              } else {
                                items[i][position].check = value;
                              }
                            });
                          },
                        ),
                      ]
                  ),
                )
              ],
            ),
          ),
          CartWidget(
            items: items,
          ),
        ],
      ),
    );
  }


  void _setStatusCheckoutAll(bool? value) {
    for (int i = 0 ; i < items.length ; i++) {
      for (int j = 0 ; j < items[i].length ; j++) {
        items[i][j].check = value??false;
      }
    }
  }

}
