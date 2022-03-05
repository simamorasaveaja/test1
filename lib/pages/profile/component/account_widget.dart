import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class AccountWidget extends StatefulWidget {
  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: greenPrimary,
          borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 48.0,
            height: 48.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/ic_profile_template.jpg')
                )
            )
          ),
          SizedBox(width: 16.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, Gondrong!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 16.0,),
                Text('kutugondrong@gmail.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),),
              ],
            )
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: orangePrimary,
                borderRadius: const BorderRadius.all(Radius.circular(15.0))
            ),
            child: Text('15 Vouchers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
          )
        ],
      ),
    );
  }
}
