import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/network/models/response/product_response.dart';
import 'package:setoko/pages/category/component/item_new_widget.dart';
import 'package:setoko/utils/colors.dart';

class ListItemNewWidget extends StatefulWidget {

  final List<ProductResponse> products;
  final String title;

  const ListItemNewWidget({Key? key, required this.products, required this.title}) : super(key: key);

  @override
  _ListItemNewWidgetState createState() => _ListItemNewWidgetState();
}

class _ListItemNewWidgetState extends State<ListItemNewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 21.0, left: 23.0, right: 19.0),
            child: Row(
              children: [
                Text(widget.title, style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 258,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: widget.products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemNewWidget(
                  onTab: () {
                    Navigator.pushNamed(context, Routes.detail);
                  },
                  product: widget.products[index],
                );
              },

            ),
          )
        ],
      ),
    );

  }
}
