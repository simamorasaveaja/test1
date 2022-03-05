import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/pages/home/component/item_flash_sale_by_category_widget.dart';

class ListFlashShaleByCategoryWidget extends StatefulWidget {
  final CategoryResponse categoryResponse;

  const ListFlashShaleByCategoryWidget({Key? key, required this.categoryResponse}) : super(key: key);

  @override
  _ListFlashShaleByCategoryWidgetState createState() => _ListFlashShaleByCategoryWidgetState();
}

class _ListFlashShaleByCategoryWidgetState extends State<ListFlashShaleByCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: widget.categoryResponse.products!.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ItemFlashSaleByCategoryWidget(
          product : widget.categoryResponse.products![index],
          onTab: () {
            Navigator.pushNamed(context, Routes.detail);
          },
        );
      },

    );
  }
}
