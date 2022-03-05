import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class PointWidget extends StatefulWidget {
  @override
  _PointWidgetState createState() => _PointWidgetState();
}

class _PointWidgetState extends State<PointWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Image.asset(
                'assets/images/ic_frame_allo_bank.png',),
              SizedBox(width: 10.0,),
              Text('Allo Points you’ll earne', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
              Spacer(),
              Text('783 Points', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
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
