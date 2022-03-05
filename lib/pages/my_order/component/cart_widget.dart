import 'package:flutter/material.dart';
import 'package:setoko/argument/checkout_page_argument.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/model/item_product.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class CartWidget extends StatefulWidget {

  final List<List<ItemProduct>> items;

  const CartWidget({Key? key, required this.items}) : super(key: key);

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {

  bool? gift = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 2, color: grayPrimary.withOpacity(0.4),),
        Container(
          height: 1,
          color: grayPrimary.withOpacity(0.4),
          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
        ),
      ],
    );
  }

  String _getAllValue() {
    int length = 0;
    for (int i = 0 ; i < widget.items.length ; i++) {
      for (int j = 0 ; j < widget.items[i].length ; j++) {
        if (widget.items[i][j].check == true) {
          length++;
        }
      }

    }
    return convertValueToCurrency(length.toDouble()*700000);
  }

  String _getCheckoutLength() {
    int length = 0;
    for (int i = 0 ; i < widget.items.length ; i++) {
      for (int j = 0 ; j < widget.items[i].length ; j++) {
          length++;
      }

    }
    return 'items $length';
  }

  List<List<ItemProduct>> _getItemCheckout() {
    List<List<ItemProduct>> itemsCheckout = [];
    for (int i = 0 ; i < widget.items.length ; i++) {
      List<ItemProduct> itemTemp = [];
      for (int j = 0 ; j < widget.items[i].length ; j++) {
        if (widget.items[i][j].check == true) {
          itemTemp.add(widget.items[i][j]);
        }
      }
      if (itemTemp.isNotEmpty) {
        itemsCheckout.add(itemTemp);
      }

    }
    return itemsCheckout;
  }

}
