import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

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
      alignment: Alignment.bottomRight,
      child: Column(
        children: [
          Spacer(),
          Row(
            children: buildIndicator(widget.maxIndicator),
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(10.0),
                ),
                child: Container(
                  color: greenPrimary,
                  padding: const EdgeInsets.only(top: 5.0,bottom: 5.0, right: 10.0, left: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(getSourceByNameImage('ic_thumb_like_small')),
                      ),
                      SizedBox(width: 5,),
                      Text(S.of(context).best_seller, style: TextStyle(color: white, fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(const Radius.circular(16.0)),
                  child: Container(
                    color: blackLight,
                    height: 24,
                    width: 42,
                    alignment: Alignment.center,
                    child: Text((widget.currentPage+1).toString()+'/'+widget.maxIndicator.toString(), style: TextStyle(color: white, fontWeight: FontWeight.normal, fontSize: 10),),
                  ),
                ),
              )
            ],
          )
        ],
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
