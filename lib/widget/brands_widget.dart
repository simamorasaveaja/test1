import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';

import 'brand_widget.dart';

class BrandsWidget extends StatefulWidget {

  const BrandsWidget({Key? key}) : super(key: key);
  @override
  _BrandsWidgetState createState() => _BrandsWidgetState();
}

class _BrandsWidgetState extends State<BrandsWidget> {
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
                Text(S.of(context).popular_brands, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
            height: 170,
            child: GridView.count(
              childAspectRatio: 130/280,
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              crossAxisCount: 2 ,
              scrollDirection: Axis.horizontal,
              children: List.generate(6,(index){
                return Container(
                  child: BrandWidget(
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }

}
