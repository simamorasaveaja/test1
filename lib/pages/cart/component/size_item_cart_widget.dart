import 'dart:math';

import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class SizeItemCartWidget extends StatefulWidget {
  @override
  _SizeItemCartWidgetState createState() => _SizeItemCartWidgetState();
}

class _SizeItemCartWidgetState extends State<SizeItemCartWidget> {

  int size = new Random().nextInt(10);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (size > 1) {
                size--;
              }
            });
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10.0),
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: grayPrimary),
                borderRadius: const BorderRadius.all(Radius.circular(4.0))
            ),
            child: Text('-', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
          ),
        ),
        Text(size.toString(), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 16),),
        InkWell(
          onTap: () {
            setState(() {
              if (size < 10) {
                size++;
              }
            });
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10.0),
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: orangePrimary,
                borderRadius: const BorderRadius.all(Radius.circular(4.0))
            ),
            child: Text('+', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
          ),
        )
      ],
    );
  }
}
