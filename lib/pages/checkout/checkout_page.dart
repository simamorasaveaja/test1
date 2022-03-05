import 'package:flutter/material.dart';
import 'package:setoko/pages/checkout/component/address_widget.dart';
import 'package:setoko/pages/checkout/component/vip_widget.dart';
import 'package:setoko/pages/checkout/component/coupon_widget.dart';
import 'package:setoko/pages/checkout/component/point_widget.dart';
import 'package:setoko/pages/checkout/component/payment_detail_widget.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/argument/checkout_page_argument.dart';

import 'component/checkout_widget.dart';
import 'component/delivery_method_widget.dart';

class CheckoutPage extends StatefulWidget {
  final CheckoutPageArgument args;

  const CheckoutPage({Key? key, required this.args}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

  List<bool?> itemInsurence = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverAppBar(
                    backgroundColor: Colors.white,
                    // Needed to avoid auto-switching status bar color
                    elevation: 0,
                    floating: true,
                    centerTitle: true,
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios_outlined, color: Colors.black87),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    title: Text('CHECKOUT', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),)
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        AddressWidget(),
                        Container(
                          height: 14,
                          color: grayLighter,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: buildCheckoutWidget(),
                        ),
                        VipWidget(),
                        CouponWidget(),
                        PaymentDetailWidget(
                          items: widget.args.items,
                        ),
                        PointWidget(),
                      ]
                  ),
                )
              ],
            ),
          ),
          CheckoutWidget(
            items: widget.args.items,
          ),
        ],
      ),
    );
  }

  List<Widget> buildCheckoutWidget() {
    List<Widget> listWidget = [];
    listWidget.add(Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text('Order Summary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
    ));
    for (int i = 0 ; i < widget.args.items.length ; i++) {
      listWidget.add(SizedBox(height: 30,));
      listWidget.add(Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Sold by  ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),),
            Image(
              image: AssetImage('assets/images/ic_sold_by_setoko.png'),
            ),
          ],
        ),
      ));
      for (int j = 0 ; j < widget.args.items[i].length ; j++) {
        listWidget.add(
            Container(
              height: 1,
              color: grayLighter,
              padding: const EdgeInsets.only( left: 20.0, right: 20.0),
              margin: const EdgeInsets.only(top: 21, bottom: 13),
            )
        );
        listWidget.add(
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/ic_template_item.png'),
                      height: 80,
                      width: 80,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nike Airmax React Mens Running Shoes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                          Text('Quantity: 1 (500 gr)', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),),
                          Text('Rp 700.000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        );
      }
      listWidget.add(SizedBox(height: 12,));
      listWidget.add(DeliveryMethodWidget());
      listWidget.add(
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: Checkbox(
                      checkColor: Colors.white,  // color of tick Mark
                      activeColor: greenPrimary,
                      value: itemInsurence[i],
                      onChanged: (value) {
                        setState(() {
                          itemInsurence[i] = value;
                        });
                      },
                    ),
                  ),
                  Text('Delivery Insurance', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  SizedBox(width: 5.0,),
                  Image(image: AssetImage('assets/images/ic_info.png'),),
                ],
              ),
              Container(
                height: 1,
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                color: grayLighter,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Subtotal ', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
                    Text(widget.args.items[i].length.toString()+' Items', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                    Spacer(),
                    Text(convertValueToCurrency(widget.args.items[i].length.toDouble()*700000), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                  ],
                ),
              )
            ],
          ),
        )
      );
      listWidget.add(
        Container(
          height: 14,
          color: grayLighter,
        )
      );
    }
    return listWidget;
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0 ; i < widget.args.items.length ; i++) {
      itemInsurence.add(false);
    }
  }
}
