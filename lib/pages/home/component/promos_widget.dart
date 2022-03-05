import 'dart:async';

import 'package:flutter/material.dart';
import 'package:setoko/network/models/response/banner_response.dart';
import 'package:setoko/pages/home/component/indicator_widget.dart';
import 'package:setoko/utils/colors.dart';

class PromosWidget extends StatefulWidget {

  final List<BannerResponse> banners;

  const PromosWidget({Key? key, required this.banners}) : super(key: key);

  @override
  _PromosWidgetState createState() => _PromosWidgetState();

}

class _PromosWidgetState extends State<PromosWidget> {

  Timer? _timer;
  int _currentPage = 0;

  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < widget.banners.length-1) {
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
    final double width = MediaQuery.of(context).size.width;
    return  Container(
      color: grayLight,
      child: Stack(
        children: [
          Container(
            height: width/2,
            decoration: BoxDecoration(
                color: greenPrimary,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0))
            ),
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              controller: _pageController,
              itemCount: widget.banners.length,
              itemBuilder: (context, index){
                var imageUrl = 'https://cdn.pixabay.com/photo/2016/09/01/19/53/pocket-watch-1637396_1280.jpg';
                try {
                  imageUrl = widget.banners[index].variants![0].filename!;
                } catch (e) {}
                return ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context,
                        Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          backgroundColor: white,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: width/2-30),
              child: IndicatorWidget(currentPage: _currentPage, maxIndicator: widget.banners.length,)
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    _pageController.dispose();
    super.dispose();
  }
}
