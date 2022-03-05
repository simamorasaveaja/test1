import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
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
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20.0))
        ),
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buildIndicator(widget.maxIndicator),
        ),
      ),
    );
  }

  List<Widget> buildIndicator(final maxIndicator) {
    List<Widget> indicatorWidget = [];
    for (int i = 0 ; i < maxIndicator ; i++) {
      indicatorWidget.add(Container(
        width: 7,
        height: 7,
        decoration: new BoxDecoration(
          color: widget.currentPage == i ? greenPrimary : grayLight,
          shape: BoxShape.circle,
        ),
      ));
      indicatorWidget.add(SizedBox(width: 10,));
    }
    indicatorWidget.add(Spacer());
    indicatorWidget.add(
      Text(
        S.of(context).see_all_promo,
        style: TextStyle(color: greenPrimary, fontSize: 12),
      )
    );
    return indicatorWidget;
  }
}
