import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';

class SubscriptionWidget extends StatefulWidget {

  const SubscriptionWidget({Key? key}) : super(key: key);
  @override
  _SubscriptionWidgetState createState() => _SubscriptionWidgetState();
}

class _SubscriptionWidgetState extends State<SubscriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grayLighter,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0),
            child: Row(
              children: [
                Text(S.of(context).try_subscriptions, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25)
                      ,topRight: Radius.circular(25)),
                  child: Image(
                    image: AssetImage('assets/images/ic_sample_promo.png'),
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0, bottom: 12.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: grayPrimary,
                        width: 2
                      ),
                      color: white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/ic_template_item.png',
                                  fit: BoxFit.contain,
                                  height: 80,
                                ),
                              ),
                              Text('Dancow Fortigo Full Cream 500g', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                              SizedBox(height: 2,),
                              Text('Rp 720.000', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 8),),
                              SizedBox(height: 2,),
                              Text('Rp 700.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 12),),
                            ],
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/ic_template_item.png',
                                  fit: BoxFit.contain,
                                  height: 80,
                                ),
                              ),
                              Text('Dancow Fortigo Full Cream 500g', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                              SizedBox(height: 2,),
                              Text('Rp 720.000', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 8),),
                              SizedBox(height: 2,),
                              Text('Rp 700.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 12),),
                            ],
                          ),

                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/ic_template_item.png',
                                  fit: BoxFit.contain,
                                  height: 80,
                                ),
                              ),
                              Text('Dancow Fortigo Full Cream 500g', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                              SizedBox(height: 2,),
                              Text('Rp 720.000', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 8),),
                              SizedBox(height: 2,),
                              Text('Rp 700.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 12),),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
