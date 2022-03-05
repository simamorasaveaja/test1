import 'package:flutter/material.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/pages/home/component/list_flash_sale_by_category_widget.dart';
import 'package:setoko/utils/colors.dart';

class FlashSaleWidget extends StatefulWidget {
  final List<CategoryResponse> categories;

  const FlashSaleWidget({Key? key, required this.categories}) : super(key: key);
  @override
  _FlashSaleWidgetState createState() => _FlashSaleWidgetState();
}

class _FlashSaleWidgetState extends State<FlashSaleWidget> with SingleTickerProviderStateMixin {

  List<Tab> myTabs = [];

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    for (int i = 0 ; i < widget.categories.length ; i++) {
      myTabs.add(Tab(text: widget.categories[i].name,));
    }
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeLighter,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // The height of TabBar without icons is 46 (72 with), so 2 pixels for border
                height: 48,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: grayPrimary,
                      width: 1,
                    ),
                  ),
                ),
              ),
              TabBar(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                controller: _tabController,
                tabs: myTabs,
                isScrollable: true,
                unselectedLabelColor: blackLight,
                labelColor: blackPrimary,
                labelStyle: TextStyle(fontSize: 16),  //For Selected tab
                unselectedLabelStyle: TextStyle(fontSize: 16.0), //For
                indicatorColor: greenMedium,

              ),
            ],
          ),
          Container(
            height: 308,
            child: TabBarView(
              controller: _tabController,
              children: myTabs.asMap().map((i, element) => MapEntry(i, ListFlashShaleByCategoryWidget(
                categoryResponse: widget.categories[i],
              ))).values.toList(),
            ),
          )
        ],
      ),
    );
  }

}
