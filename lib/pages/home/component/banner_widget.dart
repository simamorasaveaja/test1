import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

class BannerWidget extends StatefulWidget {
  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grayLight,
      child: Container(
        margin: const EdgeInsets.all(20.0),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20.0))
        ),
        child: Image.asset(
          'assets/images/ic_template_brand.png',
        ),
      ),
    );
  }
}
