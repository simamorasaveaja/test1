import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class ItemPromoWidget extends StatefulWidget {

  const ItemPromoWidget({Key? key}) : super(key: key);
  @override
  _ItemPromoWidgetState createState() => _ItemPromoWidgetState();
}

class _ItemPromoWidgetState extends State<ItemPromoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 16.0),
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
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Promo Period', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),),
                Text('18 Feb - 24 Apr 2021', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 16),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Text('Promo Code', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 10),),
                        Text('18 Feb - 24 Apr 2021', style: TextStyle(color: Colors.green, fontWeight: FontWeight.normal, fontSize: 14),),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )),
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: orangePrimary,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('Copy Code', style: TextStyle(color: orangePrimary, fontWeight: FontWeight.normal, fontSize: 12),),
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
