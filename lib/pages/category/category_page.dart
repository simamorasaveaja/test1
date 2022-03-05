import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:setoko/argument/category_page_argument.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/pages/category/store/category_store.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/widget/brands_widget.dart';
import 'package:setoko/widget/flash_sale_time_widget.dart';
import 'package:setoko/widget/item_product_widget.dart';
import 'package:setoko/widget/list_shop_by_coupon_widget.dart';
import 'package:setoko/widget/subscription_widget.dart';
import 'package:setoko/widget/tab_list_product_widget.dart';

import 'component/banner_category_widget.dart';
import 'component/header_category_widget.dart';
import 'component/list_flash_sale_by_category_widget.dart';
import 'component/list_item_new_widget.dart';
import 'component/list_item_widget.dart';

class CategoryPage extends StatefulWidget {

  final CategoryPageArgument args;

  const CategoryPage({Key? key, required this.args}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();

}

class _CategoryPageState extends State<CategoryPage> {

  CategoryStore? _categoryStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Observer(
        builder: (context) {
          switch (_categoryStore?.state) {
            case CategoryStoreState.loading:
              return Center(child: CircularProgressIndicator(backgroundColor: greenPrimary,));
            case CategoryStoreState.loaded:
              return CustomScrollView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate([
                        SafeArea(
                          child:HeaderCategoryWidget(),
                        ),
                        BannerCategoryWidget(),
                        ListItemWidget(
                          itemCategory: widget.args.itemCategory,
                        ),
                        FlashSaleTimeWidget(),
                        ListFlashShaleByCategoryWidget(
                          products: _categoryStore!.flashSale,
                        ),
                        ListItemNewWidget(
                          title: S.of(context).what_s_new,
                          products: _categoryStore!.newProduct,
                        ),
                        BrandsWidget(),
                        ListItemShopByCouponWidget(),
                        ListItemNewWidget(
                          title: S.of(context).recommended_for_you,
                          products: _categoryStore!.newProduct,
                        ),
                        SubscriptionWidget(),
                        TabListProductWidget(
                          onTabSelected: (position) {

                          },
                        ),
                      ])
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        var tempIndex = index*2;
                        return Container(
                            color: white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ItemProductWidget(product: _categoryStore!.listOfProduct[tempIndex]),
                                ItemProductWidget(product: tempIndex+1 < _categoryStore!.listOfProduct.length ? _categoryStore!.listOfProduct[tempIndex+1] : null),
                              ],
                            )
                        );
                      },
                      childCount: _categoryStore!.lengthProductAfterDivision,
                    ),
                  )
                ],
              );
            default:
              return Container();
          }
        },
      )
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _categoryStore ??= Provider.of<CategoryStore>(context);
  }
}
