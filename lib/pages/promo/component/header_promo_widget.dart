import 'package:flutter/material.dart';
import 'package:setoko/pages/promo/component/search_widget.dart';

class HeaderPromoWidget extends StatefulWidget {
  @override
  _HeaderPromoWidgetState createState() => _HeaderPromoWidgetState();
}

class _HeaderPromoWidgetState extends State<HeaderPromoWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SearchWidget()
        ),
        SizedBox(width: 16,),
        Icon(Icons.shopping_cart_outlined, color: Colors.grey,),
        SizedBox(width: 16,),
        Icon(Icons.notification_important_outlined, color: Colors.grey,),
      ],
    );
  }
}
