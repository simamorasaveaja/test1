import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class CouponWidget extends StatefulWidget {
  @override
  _CouponWidgetState createState() => _CouponWidgetState();
}

class _CouponWidgetState extends State<CouponWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 40,
            width: 1,
            color: Colors.black87.withOpacity(0.2),
          ),
        ),
        Expanded(
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).my_coupons, style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 12),),
              Text('13 '+S.of(context).coupons, style: TextStyle(color: Colors.black87.withOpacity(0.6), fontSize: 10),),
            ],
          ),
        ),
        Container(
          width: 30,
          alignment: Alignment.center,
          child: Image(
            image: AssetImage(getSourceByNameImage('ic_next_oval')),
          ),
        ),
      ],
    );
  }
}
