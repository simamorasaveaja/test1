import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/widget/star_rating_widget.dart';

class InfoWidget extends StatefulWidget {
  @override
  _InfoWidgetState createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Rp 700.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 18),),
                      Text(' / Pcs', style: TextStyle(color: blackLight, fontWeight: FontWeight.normal, fontSize: 10),),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                        child: Container(
                          color: redMedium,
                          padding: const EdgeInsets.all(4.0),
                          child: Text('15%', style: TextStyle(color: white, fontWeight: FontWeight.normal, fontSize: 12),),
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text('Rp 720.000',
                        style: TextStyle(
                            color: blackLight,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Text(S.of(context).estimated_weight+"200 gram", style: TextStyle(color: blackLight, fontWeight: FontWeight.normal, fontSize: 10),),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Image(
                    image: AssetImage(getSourceByNameImage('ic_love')),
                  ),
                  SizedBox(height: 8.0,),
                  Text('34',
                    style: TextStyle(
                      color: blackLight,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 8.0,),
          Text('Lancome L’Absolu Lacquer Gloss Buildable High Shine', style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 16),),
          SizedBox(height: 5.0,),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(S.of(context).brand, style: TextStyle(color: black, fontWeight: FontWeight.normal, fontSize: 10),),
              SizedBox(width: 5,),
              Text("Sunpride", style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 12),),
            ],
          ),
          SizedBox(height: 8.0,),
          Row(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('4.0 ', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
                  StarRatingWidget(
                    rating: 4,
                    onRatingChanged: (rating) {
                      setState(() {

                      });
                    }, starCount: 5,
                  ),
                ],
              ),
              Container(
                height: 20,
                width: 1,
                margin: const EdgeInsets.only(left: 7, right: 7),
                color: grayPrimary,
              ),
              Text('(215 Reviews)', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.normal, fontSize: 14)),
              Container(
                height: 20,
                width: 1,
                margin: const EdgeInsets.only(left: 7, right: 7),
                color: grayPrimary,
              ),
              Text('205 Sold out', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
            height: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wholesale Price', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
                    SizedBox(height: 2.0,),
                    Text('Starts from Rp 98.000', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),),
                    SizedBox(height: 2.0,),
                    Text('See All', style: TextStyle(color: greenPrimary, fontWeight: FontWeight.normal, fontSize: 11),),
                    SizedBox(height: 8.0,)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: orangePrimary,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Text('Continue Group Buy', style: TextStyle(color: orangePrimary, fontWeight: FontWeight.normal, fontSize: 14)),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
            height: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/ic_delivery.png',),
              SizedBox(width: 5.0,),
              Text('Free delivery', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),),
              SizedBox(width: 10.0,),
              Image.asset(
                'assets/images/ic_time.png',),
              SizedBox(width: 5.0,),
              Flexible(child: Text('On-time delivery guaranteed', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),)),
            ],
          ),
          SizedBox(height: 16.0,),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ic_subtract.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/ic_you_have.png',),
                SizedBox(width: 10.0,),
                Flexible(
                  child: Text('You have 7 coupons available. Apply your coupon for this product!', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 12),),
                ),
                SizedBox(width: 10.0,),
                Container(
                  width: 30,
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(getSourceByNameImage('ic_next_oval')),
                  ),
                )
              ],
            ) /* add child content here */,
          ),
          SizedBox(width: 30.0,),
        ],
      ),
    );
  }
}
