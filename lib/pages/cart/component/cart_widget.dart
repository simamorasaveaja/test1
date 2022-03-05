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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTileTheme(
              contentPadding: EdgeInsets.all(0),
              child: Checkbox(
                checkColor: Colors.white,  // color of tick Mark
                activeColor: greenPrimary,
                value: gift,
                onChanged: (value) {
                  setState(() {
                    gift = value;
                  });
                },
              ),
            ),
            Text('I want to send a product as a gift', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
          ],
        ),
        Container(
          height: 1,
          color: grayPrimary.withOpacity(0.4),
          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Subtotal ', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                        Text(_getCheckoutLength(), style: TextStyle(color: grayPrimary, fontWeight: FontWeight.normal, fontSize: 14),),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text(_getAllValue(), style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 16),),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.checkout, arguments: CheckoutPageArgument(items: _getItemCheckout()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 13.0, bottom: 13.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: orangePrimary,
                      borderRadius: const BorderRadius.all(Radius.circular(24.0))
                  ),
                  child: Text('Check Out', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                ),
              )
            ],
          ),
        )
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
        if (widget.items[i][j].check == true) {
          length++;
        }
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
