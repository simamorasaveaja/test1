import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/widget/brands_widget.dart';
import 'package:setoko/widget/flash_sale_time_widget.dart';
import 'package:setoko/widget/item_product_widget.dart';
import 'package:setoko/widget/list_shop_by_coupon_widget.dart';
import 'package:setoko/widget/search_widget.dart';
import 'package:setoko/widget/subscription_widget.dart';
import 'package:setoko/widget/tab_list_product_widget.dart';

import 'component/banner_widget.dart';
import 'component/bill/bill_payment_page.dart';
import 'component/categories_widget.dart';
import 'component/header_widget.dart';
import 'component/highlights_widget.dart';
import 'component/info_payment_widget.dart';
import 'component/flash_sale_widget.dart';
import 'component/list_item_by_like_widget.dart';
import 'component/list_item_inspiration_widget.dart';
import 'component/promos_widget.dart';
import 'component/list_reorder_widget.dart';
import 'component/why_widget.dart';
import 'store/home_store.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeStore? _homeStore;
  ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        switch (_homeStore?.homeStoreState) {
          case HomeStoreState.loading:
            return Center(child: CircularProgressIndicator(backgroundColor: greenPrimary,));
          case HomeStoreState.loaded:
            return Scaffold(
              backgroundColor: greenPrimary,
              body: Container(
                height: double.infinity,
                width: double.infinity,
                child: CustomScrollView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  slivers: [
                    SliverAppBar(
                        backgroundColor: greenPrimary,
                        // Needed to avoid auto-switching status bar color
                        elevation: 0,
                        floating: true,
                        centerTitle: true,
                        title: HeaderWidget(),

                    ),
                    SliverList(
                        delegate: SliverChildListDelegate([
                          SearchWidget(
                            color: greenPrimary,
                            padding: const EdgeInsets.only(left: 19, right: 19, top: 14,),
                            onSearchChange: (value) {

                            },
                          ),
                          PromosWidget(
                            banners: _homeStore!.bannersPromo,
                          ),
                          InfoPaymentWidget(),
                          CategoriesWidget(
                            categories: _homeStore!.categories,
                          ),
                          FlashSaleTimeWidget(),
                          FlashSaleWidget(
                            categories: _homeStore!.flashSale,
                          ),
                          BannerWidget(),
                          BrandsWidget(),
                          HighlightsWidget(),
                          ListItemByLikeWidget(products: _homeStore!.youLike),
                          ListItemShopByCouponWidget(),
                          SubscriptionWidget(),
                          BillPaymentWidget(),
                          WhyWidget(),
                          ListItemInspirationWidget(),
                          ListReorderWidget(),
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
                                  ItemProductWidget(product: _homeStore!.listOfProducts[tempIndex]),
                                  ItemProductWidget(product: tempIndex+1 < _homeStore!.listOfProducts.length ? _homeStore!.listOfProducts[tempIndex+1] : null),
                                ],
                              )
                          );
                        },
                        childCount: _homeStore!.lengthProductAfterDivision,
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: _homeStore!.showFloatingButton == false
                  ? null
                  : FloatingActionButton(
                backgroundColor: greenPrimary,
                onPressed: _scrollToTop,
                child: Icon(Icons.arrow_upward),
              ),
            );
          default:
            return Container(
              color: Colors.red,
            );
        }
      },
    );

  }

  void _scrollToTop() {
    _scrollController!.jumpTo(0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _homeStore ??= Provider.of<HomeStore>(context);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController!.offset >= 400) {
          _homeStore!.showOrNotFloatingButton(true);
        } else {
          _homeStore!.showOrNotFloatingButton(false);
        }
      });
  }

  @override
  void dispose() {
    _scrollController!.dispose(); // dispose the controller
    super.dispose();
  }
}
