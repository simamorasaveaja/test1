import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class ItemInspirationWidget extends StatefulWidget {

  const ItemInspirationWidget({Key? key}) : super(key: key);
  @override
  _ItemInspirationWidgetState createState() => _ItemInspirationWidgetState();
}

class _ItemInspirationWidgetState extends State<ItemInspirationWidget> {
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
                Text('4 Best Cookware Sets for 2021', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 8,),
                Text('Did the quarantine bring out your innerchef? Step up your cooking game with these awe...', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
