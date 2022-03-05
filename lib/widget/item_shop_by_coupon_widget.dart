import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';

class ItemShopByCouponWidget extends StatefulWidget {

  const ItemShopByCouponWidget({Key? key}) : super(key: key);
  @override
  _ItemShopByCouponWidgetState createState() => _ItemShopByCouponWidgetState();
}

class _ItemShopByCouponWidgetState extends State<ItemShopByCouponWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      margin: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25)
                ,topRight: Radius.circular(25)),
            child: Image(
              image: AssetImage('assets/images/ic_sample_promo.png'),
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0, bottom: 12.0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: grayPrimary,
                ),
                color: white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('20% discount up to Rp25.000', style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 8,),
                Text(S.of(context).period, style: TextStyle(color: blackLighter, fontWeight: FontWeight.normal, fontSize: 12),),
                Text('18 Feb - 24 Apr 2021', style: TextStyle(color: blackPrimary, fontWeight: FontWeight.normal, fontSize: 16),),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Text(S.of(context).code, style: TextStyle(color: blackLighter, fontWeight: FontWeight.normal, fontSize: 10),),
                        Text('LAYS1OF1', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.normal, fontSize: 14),),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: orangePrimary,
                          ),
                          color: orangePrimary,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text(S.of(context).copy_code, style: TextStyle(color: white, fontWeight: FontWeight.normal, fontSize: 12),),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
