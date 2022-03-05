import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class TabListProductWidget extends StatefulWidget {
  final Function(int) onTabSelected;

  const TabListProductWidget({Key? key, required this.onTabSelected}) : super(key: key);
  @override
  _TabListProductWidgetState createState() => _TabListProductWidgetState();
}

class _TabListProductWidgetState extends State<TabListProductWidget> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: TabBar(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        controller: _tabController,
        onTap: (index) {
          widget.onTabSelected(index);
        },
        tabs: [
          Tab( text: 'For you',),
          Tab( text: 'Best Seller',),
        ],
        unselectedLabelColor: blackLighter,
        labelColor: blackPrimary,
        indicatorColor: greenPrimary,
        isScrollable: true,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
}
