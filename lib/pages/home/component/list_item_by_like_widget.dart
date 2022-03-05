import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/network/models/response/product_response.dart';
import 'package:setoko/pages/home/component/item_by_like_widget.dart';
import 'package:setoko/utils/colors.dart';

class ListItemByLikeWidget extends StatefulWidget {
  final List<ProductResponse> products;
  const ListItemByLikeWidget({Key? key, required this.products}) : super(key: key);

  @override
  _ListItemByLikeWidgetState createState() => _ListItemByLikeWidgetState();
}

class _ListItemByLikeWidgetState extends State<ListItemByLikeWidget> {
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
                Text(S.of(context).we_know_you_ll_like_this, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 288,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: widget.products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemByLikeWidget(
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
