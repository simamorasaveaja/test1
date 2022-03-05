import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/model/item_address.dart';

class AddressWidget extends StatefulWidget {
  @override
  _AddressWidgetState createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  ItemAddress _address = ItemAddress(isPriority: true, type: "Home");
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.address).then((value) {
          if (value is ItemAddress) {
            setState(() {
              _address = value;
            });
          }
          return null;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delivery Address', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 12.0,),
            Text(_address.type, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
            SizedBox(height: 2.0,),
            Text(_address.name, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
            Text(_address.address, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
            Text(_address.number, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
          ],
        ),
      ),
    );
  }
}
