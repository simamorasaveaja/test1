import 'package:flutter/material.dart';
import 'package:setoko/pages/home/component/coupon_widget.dart';
import 'package:setoko/pages/home/component/payment_widget.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class InfoPaymentWidget extends StatefulWidget {
  @override
  _InfoPaymentWidgetState createState() => _InfoPaymentWidgetState();
}

class _InfoPaymentWidgetState extends State<InfoPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
      color: grayLight,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10.0))
        ),
        child: Row (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              height: 37,
              width: 37,
              image: AssetImage(getSourceByNameImage('ic_payment_logo')),
            ),
            Expanded(
              child: PaymentWidget(),
            ),
            Expanded(
              child: CouponWidget(),
            )
          ],
        ),
      ),
    );
  }
}
