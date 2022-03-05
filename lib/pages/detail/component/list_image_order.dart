import 'dart:async';

import 'package:flutter/material.dart';

import 'indicator_widget.dart';

class ListImageWidget extends StatefulWidget {
  @override
  _ListImageWidgetState createState() => _ListImageWidgetState();
}

class _ListImageWidgetState extends State<ListImageWidget> {

  Timer? _timer;
  int _currentPage = 0;
  int maxIndicator = 5;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
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
    return  Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            controller: _pageController,
            itemCount: maxIndicator,
            itemBuilder: (context, index){
              return Container(
                  child: Image.asset(
                    'assets/images/ic_template_item.png',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  ),
              );
            },
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: IndicatorWidget(currentPage: _currentPage, maxIndicator: maxIndicator,)
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    _pageController.dispose();
    super.dispose();
  }
}
