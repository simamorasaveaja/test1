import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(Icons.search, color: Colors.grey,),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: new InputDecoration.collapsed(
                  hintText: 'What are you looking for',
                  hintStyle: TextStyle(fontSize: 15.0, color: grayPrimary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
