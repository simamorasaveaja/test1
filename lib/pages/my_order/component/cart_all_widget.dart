import 'package:flutter/material.dart';
import 'package:setoko/model/item_product.dart';
import 'package:setoko/utils/colors.dart';

class CartAllWidget extends StatefulWidget {

  final Function(bool?) onTabCheck;
  final List<List<ItemProduct>> items;

  const CartAllWidget({Key? key, required this.onTabCheck, required this.items}) : super(key: key);
  @override
  _CartAllWidgetState createState() => _CartAllWidgetState();
}

class _CartAllWidgetState extends State<CartAllWidget> {

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
              child: SizedBox(width: 16,),
            ),
            Text('Select all products ('+_getCheckoutLength().toString()+'/'+_getSizeItems().toString()+')', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
            Spacer(),
            if (_getCheckoutLength() == _getSizeItems())
            InkWell(
              onTap: () {
                widget.onTabCheck(false);
              },
                child: Text('Delete', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 14),)
            ),
            SizedBox(width: 8.0,)
          ],
        ),
      ],
    );
  }

  int _getCheckoutLength() {
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

  int _getSizeItems() {
    int size = 0;
    for (int i = 0 ; i < widget.items.length ; i++) {
      size = size + widget.items[i].length;
    }
    return size;
  }

  bool _getCheckoutAll() {
    for (int i = 0 ; i < widget.items.length ; i++) {
      for (int j = 0 ; j < widget.items[i].length ; j++) {
        if (widget.items[i][j].check == false) {
          return false;
        }
      }
    }
    return true;
  }
}
