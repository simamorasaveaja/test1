import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class VipWidget extends StatefulWidget {
  @override
  _VipWidgetState createState() => _VipWidgetState();
}

class _VipWidgetState extends State<VipWidget> {

  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Get in our VIP list, enjoy free delivery ', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTileTheme(
                contentPadding: EdgeInsets.all(0),
                child: Checkbox(
                  checkColor: Colors.white,  // color of tick Mark
                  activeColor: greenPrimary,
                  value: check,
                  onChanged: (value) {
                    setState(() {
                      check = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Become a VIP now only with Rp 20.000/month', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                    Text('See Details', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 14),),
                  ],
                ),
              ),
              SizedBox(width: 5.0,),
              Image(image: AssetImage('assets/images/ic_flying_box.png'),),
            ],
          ),
          Container(
            height: 14,
            color: grayLighter,
          ),
        ],
      ),
    );
  }
}
