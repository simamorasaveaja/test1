import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class MenuOrderWidget extends StatefulWidget {
  @override
  _MenuOrderWidgetState createState() => _MenuOrderWidgetState();
}

class _MenuOrderWidgetState extends State<MenuOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Row(
              children: [
                Text('My Orders', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17),),
                Text('See all', style: TextStyle(color: greenPrimary, fontSize: 15),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/ic_pay.png'),
                    ),
                    SizedBox(height: 10.0,),
                    Text('To Pay', style: TextStyle(color: Colors.black87, fontSize: 15),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/ic_in_progress.png'),
                    ),
                    SizedBox(height: 10.0,),
                    Text('In Progress', style: TextStyle(color: Colors.black87, fontSize: 15),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/ic_in_delivery.png'),
                    ),
                    SizedBox(height: 10.0,),
                    Text('In Delivery', style: TextStyle(color: Colors.black87, fontSize: 15),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/ic_completed.png'),
                    ),
                    SizedBox(height: 10.0,),
                    Text('Completed', style: TextStyle(color: Colors.black87, fontSize: 15),),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
            height: 16.0,
            color: grayLight,
          ),
        ],
      ),
    );
  }
}
