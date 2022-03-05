import 'package:flutter/material.dart';
import 'package:setoko/model/item_product.dart';
import 'package:setoko/pages/cart/component/size_item_cart_widget.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class ItemCartWidget extends StatefulWidget {
  final ItemProduct itemProduct;
  final int position;
  final Function(bool?, int) onTabCheck;

  const ItemCartWidget({Key? key, required this.itemProduct, required this.position, required this.onTabCheck}) : super(key: key);

  @override
  _ItemCartWidgetState createState() => _ItemCartWidgetState();
}

class _ItemCartWidgetState extends State<ItemCartWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTileTheme(
              contentPadding: EdgeInsets.all(0),
              child: Checkbox(
                checkColor: Colors.white,  // color of tick Mark
                activeColor: greenPrimary,
                value: widget.itemProduct.check,
                onChanged: (value) {
                  widget.onTabCheck(value, widget.position);
                },
              ),
            ),
            Image.asset(
              'assets/images/ic_template_item.png',
              fit: BoxFit.contain,
              height: 80,
              width: 80,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0,),
                  Text('Exclusive Canomy Home Humidifier', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  SizedBox(height: 8.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                        child: Container(
                          color: redMedium,
                          padding: const EdgeInsets.all(4.0),
                          child: Text('15%', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),),
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text('Rp 720.000',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Text('Rp 700.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 16),),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 16.0),
          child: Row(
            children: [
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(getSourceByNameImage('ic_love')),
                    ),
                    SizedBox(width: 8.0,),
                    Text('Move to wishlist', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),)
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(height: 1, color: grayPrimary.withOpacity(0.4),
        margin: const EdgeInsets.all(10.0),),
      ],
    );
  }
}
