import 'package:flutter/material.dart';
import 'package:setoko/model/item_product.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class PaymentDetailWidget extends StatefulWidget {
  final List<List<ItemProduct>> items;

  const PaymentDetailWidget({Key? key, required this.items}) : super(key: key);
  @override
  _PaymentDetailWidgetState createState() => _PaymentDetailWidgetState();
}

class _PaymentDetailWidgetState extends State<PaymentDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Payment Details', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                  Spacer(),
                  Text('See Details', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 14),),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text('Subtotal ('+ _getCheckoutLength().toString()+' items)', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  Spacer(),
                  Text(convertValueToCurrency(_getCheckoutLength().toDouble()*700000), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Text('Delivery Fee', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  Spacer(),
                  Text(convertValueToCurrency(0.0), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Text('Service Fee', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  Spacer(),
                  Text(convertValueToCurrency(5000.0), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                ],
              ),
              Container(
                height: 1,
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                color: grayLighter,
              ),
              Row(
                children: [
                  Text('Total', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                  Spacer(),
                  Text(convertValueToCurrency(_getCheckoutLength().toDouble()*700000+5000.0), style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 16),),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 14,
          color: grayLighter,
        ),
      ],
    );
  }

  int _getCheckoutLength() {
    int length = 0;
    for (int i = 0 ; i < widget.items.length ; i++) {
      length = length + widget.items[i].length;

    }
    return length;
  }
}
