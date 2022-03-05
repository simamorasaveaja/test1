import 'dart:async';

import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class WhyWidget extends StatefulWidget {

  const WhyWidget({Key? key}) : super(key: key);

  @override
  _WhyWidgetState createState() => _WhyWidgetState();

}

class _WhyWidgetState extends State<WhyWidget> {

  Timer? _timer;
  int _currentPage = 0;
  int maxPage = 3;

  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < maxPage-1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(18.0),
      color: grayLighter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).setoko_is_your_new_bestie_here_s_why, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
          SizedBox(height: 8.0,),
          SizedBox(
            height: 150,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              controller: _pageController,
              itemCount: maxPage,
              itemBuilder: (context, index){
                return Container(
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: grayPrimary,
                      ),
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage(getSourceByNameImage('ic_onboarding_2')),
                        ),
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 15.0),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Shop at great prices', style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                              SizedBox(height: 8.0,),
                              Text('Enjoy the perfect prices that you will find nowhere else.', style: TextStyle(color: blackPrimary, fontWeight: FontWeight.normal, fontSize: 12),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(maxPage),
          )
        ],
      ),
    );
  }

  List<Widget> buildIndicator(final maxIndicator) {
    List<Widget> indicatorWidget = [];
    for (int i = 0 ; i < maxIndicator ; i++) {
      indicatorWidget.add(Container(
        width: 10,
        height: 10,
        decoration: new BoxDecoration(
          color: _currentPage == i ? greenPrimary : grayLight,
          shape: BoxShape.circle,
        ),
      ));
      indicatorWidget.add(SizedBox(width: 10,));
    }
    return indicatorWidget;
  }
  @override
  void dispose() {
    _timer!.cancel();
    _pageController.dispose();
    super.dispose();
  }
}
