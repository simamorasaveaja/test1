import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/pages/detail/component/info_widget.dart';
import 'package:setoko/pages/detail/component/list_image_order.dart';
import 'package:setoko/utils/colors.dart';

import 'component/details_widget.dart';
import 'component/header_detail_order_widget.dart';
import 'component/list_item_new_widget.dart';
import 'component/list_item_type_widget.dart';
import 'component/sold_by_widget.dart';

class DetailProductPage extends StatefulWidget {
  @override
  _DetailProductPageState createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                      SafeArea(
                        child:HeaderDetailOrderWidget(),
                      ),
                      ListImageWidget(),
                      InfoWidget(),
                      Container(
                        height: 20,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      ListTypeWidget(),
                      Container(
                        height: 20,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      DetailsWidget(
                        titleProduct: S.of(context).product_details,
                        titleSpecifications: S.of(context).specifications,
                      ),
                      Container(
                        height: 20,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      SoldByWidget(),
                      Container(
                        height: 20,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      ListItemNewWidget(
                        title: S.of(context).you_may_also_like,
                      ),
                      Container(
                        height: 20,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      ListItemNewWidget(
                        title: S.of(context).your_last_seen,
                      )
                    ])
                ),
              ],
            ),
          ),
          Container(height: 1, color: grayPrimary.withOpacity(0.4),),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 48,
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: greenPrimary,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(24))
                  ),
                  child: Image(image: AssetImage('assets/images/ic_chat.png'),),
                ),
                Container(
                  height: 48,
                  margin: const EdgeInsets.only(left: 10.0),
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: orangePrimary,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(24))
                  ),
                  child: Image(image: AssetImage('assets/images/ic_fill_order.png'),),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.cart);
                    },
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.only(left: 10.0),
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: orangePrimary,
                          borderRadius: const BorderRadius.all(Radius.circular(24.0))
                      ),
                      child: Text(S.of(context).buy_now, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
