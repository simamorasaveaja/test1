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
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19, bottom: 20),
      alignment: Alignment.bottomRight,
      child: Row(
        children: buildIndicator(widget.maxIndicator),
      ),
    );
  }

  List<Widget> buildIndicator(final maxIndicator) {
    List<Widget> indicatorWidget = [];
    indicatorWidget.add(Spacer());
    for (int i = 0 ; i < maxIndicator-1 ; i++) {
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
    if (maxIndicator > 0) {
      indicatorWidget.add(Container(
        width: 10,
        height: 10,
        decoration: new BoxDecoration(
          color: widget.currentPage == maxIndicator-1 ? greenPrimary : grayLight,
          shape: BoxShape.circle,
        ),
      ));
    }
    indicatorWidget.add(Spacer());
    return indicatorWidget;
  }
}
