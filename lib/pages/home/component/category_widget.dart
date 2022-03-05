import 'package:flutter/material.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class CategoryWidget extends StatefulWidget {
  final CategoryResponse categories;
  final VoidCallback onTab;

  const CategoryWidget({Key? key, required this.categories, required this.onTab}) : super(key: key);
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: widget.onTab,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 57,
              width: 57,
              child: Image(image: AssetImage(getSourceByNameImage('cat-beauty')),),
            ),
            Container(
              padding: const EdgeInsets.only(left: 3.0, right: 3.0),
              child: Text(widget.categories.name,
                style: TextStyle(color: blackLight, fontWeight: FontWeight.normal, fontSize: 10), textAlign: TextAlign.center ,overflow: TextOverflow.ellipsis, maxLines: 3,),
            ),
          ],
        ),
      ),
    );
  }
}
