import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class ItemWidget extends StatefulWidget {
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 120,
        width: 120,
        padding: EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/ic_template_item.png',
                fit: BoxFit.contain,
                height: 50,
                width: 50,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
            )),
            SizedBox(height: 10,),
            Text('Canomi Humildera', style: TextStyle(color: blackMedium, fontWeight: FontWeight.normal, fontSize: 10), overflow: TextOverflow.ellipsis, maxLines: 2, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );

  }
}
