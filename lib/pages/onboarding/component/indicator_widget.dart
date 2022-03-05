import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class IndicatorWidget extends StatefulWidget {
  final currentPage;
  final maxIndicator;
  const IndicatorWidget({Key? key, this.currentPage = 0, this.maxIndicator = 0}) : super(key: key);
  @override
  _IndicatorWidgetState createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildIndicator(widget.maxIndicator),
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
          color: widget.currentPage == i ? greenPrimary : grayLight,
          shape: BoxShape.circle,
        ),
      ));
      indicatorWidget.add(SizedBox(width: 10,));
    }
    return indicatorWidget;
  }
}
