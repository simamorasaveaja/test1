import 'package:flutter/material.dart';
import 'package:setoko/utils/fun_utils.dart';

class PaymentWidget extends StatefulWidget {
  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
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
              Text('Rp 500.000', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 12),),
              Text('45.000 Point', style: TextStyle(color: Colors.black87.withOpacity(0.6), fontSize: 10),),
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
