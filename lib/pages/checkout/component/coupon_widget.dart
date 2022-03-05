import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class CouponWidget extends StatefulWidget {
  @override
  _CouponWidgetState createState() => _CouponWidgetState();
}

class _CouponWidgetState extends State<CouponWidget> {
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
              Text('Coupon', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
              SizedBox(height: 10.0,),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/ic_subtract.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/ic_you_have.png',),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: Text('You have 3 coupons available', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),),
                    ),
                    SizedBox(width: 10.0,),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ) /* add child content here */,
              )
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
}
