import 'package:flutter/material.dart';
import 'package:setoko/pages/promo/component/header_promo_widget.dart';
import 'package:setoko/pages/promo/component/item_promo_widget.dart';
import 'package:setoko/utils/colors.dart';

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> with SingleTickerProviderStateMixin {

  List<Tab> myTabs = [];

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    myTabs.add(Tab(text: 'All',));
    myTabs.add(Tab(text: 'Bank Promo',));
    myTabs.add(Tab(text: 'App Only',));
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          // Needed to avoid auto-switching status bar color
          elevation: 0,
          floating: true,
          centerTitle: true,
          title: HeaderPromoWidget()
        ),
        SliverToBoxAdapter (
          child: Container(
            child: TabBar(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              controller: _tabController,
              tabs: myTabs,
              isScrollable: true,
              unselectedLabelColor: Colors.black87.withOpacity(0.4),
              labelColor: Colors.black87,
              indicatorColor: greenPrimary,

            ),
          )
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 18.0,),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (ctx, index) => ItemPromoWidget(
            ),
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
