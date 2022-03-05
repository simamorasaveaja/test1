import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class SoldByWidget extends StatefulWidget {
  @override
  _SoldByWidgetState createState() => _SoldByWidgetState();
}

class _SoldByWidgetState extends State<SoldByWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sold by', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
          SizedBox(height: 5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(getSourceByNameImage('ic_payment_logo')),
              ),
              SizedBox(width: 10.0,),
              Text('LANCOME', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(width: 10.0,),
              Spacer(),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: orangePrimary,
                      borderRadius: const BorderRadius.all(Radius.circular(15.0))
                  ),
                  child: Text('View Store', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
