import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class DetailsWidget extends StatefulWidget {
  final String titleProduct;
  final String titleSpecifications;
  const DetailsWidget({Key? key, required this.titleProduct, required this.titleSpecifications}) : super(key: key);
  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> with SingleTickerProviderStateMixin {

  List<Tab> myTabs = [];

  TabController? _tabController;

  ValueNotifier<int> _currentScreen = ValueNotifier<int>(0);
  int _previousScreen = 0;

  @override
  void initState() {
    super.initState();
    myTabs.add(Tab(text: widget.titleProduct,));
    myTabs.add(Tab(text: widget.titleSpecifications,));
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _currentScreen.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          controller: _tabController,
          onTap: (index) {
            _previousScreen = _currentScreen.value;
            _currentScreen.value = index;
          },
          tabs: myTabs,
          unselectedLabelColor: blackLighter,
          labelColor: blackPrimary,
          indicatorColor: greenPrimary
        ),
        ValueListenableBuilder<int>(
            valueListenable: _currentScreen,
            builder: (context, screen, child) {
              return AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder: (Widget child, Animation<double> animation) {
                  final inAnimation =
                  Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation);
                  final outAnimation =
                  Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation);

                  final Widget inTransition = ClipRect(
                    child: SlideTransition(
                      position: inAnimation,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: child,
                      ),
                    ),
                  );

                  final Widget outTransition = ClipRect(
                    child: SlideTransition(
                      position: outAnimation,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: child,
                      ),
                    ),
                  );

                  //// Transition for three screens
                  if (child.key == ValueKey<int>(1)) {
                    if (_previousScreen == 0 || _previousScreen == 1 && screen != 2) return inTransition;
                    return outTransition;
                  } else if (child.key == ValueKey<int>(2)) {
                    return inTransition;
                  } else {
                    return outTransition;
                  }
                },
                child: _returnTab(screen),
              );
            }),
      ],
    );
  }

  _returnTab(int screen) {
    switch (screen) {
      case 0:
        return Container(
          padding: const EdgeInsets.all(5.0),
          child: Text('Buildable longwear, high shine lipcolor that feels ultra lightweight and hydrating on lips. This innovative lip lacquer combines the comfort and shine of a gloss, the pigment of a lipstick and the lasting power of a stain. Our innovative oil in water emulsion is lightweight and non-sticky, providing up to 6H of wear. Enriched with glycerin, lips feel hydrated throughout the day. The high shine finish and..', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
        );
      case 1:
        return Container(
          padding: const EdgeInsets.all(5.0),
          child: Text('Brand: Samsung', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
        );
    }
  }
}
