import 'package:flutter/material.dart';
import 'package:setoko/argument/checkout_page_argument.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/model/item_product.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class CheckoutWidget extends StatefulWidget {
  final List<List<ItemProduct>> items;

  const CheckoutWidget({Key? key, required this.items}) : super(key: key);
  @override
  _CheckoutWidgetState createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {

  bool gift = false;

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
                        Text(_getLength().toString()+' items', style: TextStyle(color: grayPrimary, fontWeight: FontWeight.normal, fontSize: 14),),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text(_getAllValue(), style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 16),),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.payment, arguments: CheckoutPageArgument(items: widget.items));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 13.0, bottom: 13.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: orangePrimary,
                      borderRadius: const BorderRadius.all(Radius.circular(24.0))
                  ),
                  child: Text('Go to Payment', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  String _getAllValue() {
    return convertValueToCurrency(_getLength().toDouble()*700000);
  }

  int _getLength() {
    int length = 0;
    for (int i = 0 ; i < widget.items.length ; i++) {
      for (int j = 0 ; j < widget.items[i].length ; j++) {
        if (widget.items[i][j].check == true) {
          length++;
        }
      }

    }
    return length;
  }
}
