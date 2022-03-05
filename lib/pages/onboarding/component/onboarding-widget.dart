import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/model/item_onboarding.dart';
import 'package:setoko/utils/fun_utils.dart';

class OnBoardingWidget extends StatefulWidget {
  final ItemOnBoarding itemOnBoarding;

  const OnBoardingWidget({Key? key, required this.itemOnBoarding}) : super(key: key);

  @override
  _OnBoardingWidgetState createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image(
              image: AssetImage(getSourceByNameImage(widget.itemOnBoarding.imageName)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.itemOnBoarding.getTitleByLocalization(S.of(context))
              , style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.itemOnBoarding.getDescByLocalization(S.of(context)),
              style: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
