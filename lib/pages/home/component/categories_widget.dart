import 'package:flutter/material.dart';
import 'package:setoko/argument/category_page_argument.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/pages/home/component/category_widget.dart';
import 'package:setoko/utils/colors.dart';

class CategoriesWidget extends StatefulWidget {
  final List<CategoryResponse> categories;

  const CategoriesWidget({Key? key, required this.categories}) : super(key: key);
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
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
                Text(S.of(context).shop_by_categories, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(height: 20.0,),
          SizedBox(
            height: 200,
            child: GridView.count(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              crossAxisCount: 2 ,
              scrollDirection: Axis.horizontal,
              children: List.generate(widget.categories.length,(index){
                return Container(
                  color: white,
                  child: CategoryWidget(
                    categories: widget.categories[index],
                    onTab: () {
                      Navigator.pushNamed(context, Routes.category, arguments: CategoryPageArgument(itemCategory: widget.categories[index]));
                    },
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

}
