import 'package:flutter/material.dart';
import 'package:setoko/pages/detail/component/item_type_widget.dart';

class ListTypeWidget extends StatefulWidget {
  const ListTypeWidget({Key? key}) : super(key: key);

  @override
  _ListTypeWidgetState createState() => _ListTypeWidgetState();
}

class _ListTypeWidgetState extends State<ListTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0),
            child: Row(
              children: [
                Text('Color ', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),),
                Text('Berry Shimmer', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15),),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemTypeWidget();
              },

            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0, bottom: 12.0, left: 16.0, right: 16.0),
            height: 1,
            color: Colors.grey.withOpacity(0.1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16.0,),
              Icon(Icons.wallet_giftcard_outlined),
              Text(' Add to Gift List', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15),),
              Spacer(),
              Icon(Icons.card_giftcard),
              Text(' Add gift wrap', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15),),
              SizedBox(width: 16.0,),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 12.0, left: 16.0, right: 16.0),
            height: 1,
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
    );

  }
}
