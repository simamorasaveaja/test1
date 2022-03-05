import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/pages/detail/component/item_new_widget.dart';

class ListItemNewWidget extends StatefulWidget {
  final String title;
  const ListItemNewWidget({Key? key, required this.title}) : super(key: key);

  @override
  _ListItemNewWidgetState createState() => _ListItemNewWidgetState();
}

class _ListItemNewWidgetState extends State<ListItemNewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0),
            child: Text(widget.title, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),),
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemNewWidget(
                  onTab: () {
                    Navigator.pushNamed(context, Routes.detail);
                  },
                );
              },

            ),
          )
        ],
      ),
    );

  }
}
