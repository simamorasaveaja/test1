import 'package:flutter/material.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class ItemCategoryWidget extends StatefulWidget {
  final CategoryResponse itemCategory;
  final VoidCallback onTab;
  const ItemCategoryWidget({Key? key, required this.itemCategory, required this.onTab}) : super(key: key);
  @override
  _ItemCategoryWidgetState createState() => _ItemCategoryWidgetState();
}

class _ItemCategoryWidgetState extends State<ItemCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTab,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 56,
              width: 56,
              child: Image(image: AssetImage(getSourceByNameImage('cat-beauty')),),
            ),
            Text(widget.itemCategory.name,
              style: TextStyle(color: blackPrimary, fontWeight: FontWeight.normal, fontSize: 12), textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
