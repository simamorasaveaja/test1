import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/network/models/response/product_response.dart';
import 'package:setoko/pages/category/component/item_flash_sale_by_category_widget.dart';
import 'package:setoko/utils/colors.dart';

class ListFlashShaleByCategoryWidget extends StatefulWidget {
  final List<ProductResponse> products;

  const ListFlashShaleByCategoryWidget({Key? key, required this.products}) : super(key: key);

  @override
  _ListFlashShaleByCategoryWidgetState createState() => _ListFlashShaleByCategoryWidgetState();
}

class _ListFlashShaleByCategoryWidgetState extends State<ListFlashShaleByCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      color: orangeLighter,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: widget.products.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ItemFlashSaleByCategoryWidget(
            product: widget.products[index],
            onTab: () {
              Navigator.pushNamed(context, Routes.detail);
            },
          );
        },

      ),
    );
  }
}
