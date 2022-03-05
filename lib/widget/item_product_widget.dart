import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/network/models/response/product_response.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';
import 'package:setoko/widget/star_rating_widget.dart';

class ItemProductWidget extends StatefulWidget {
  final ProductResponse? product;

  const ItemProductWidget({Key? key,  this.product}) : super(key: key);

  @override
  _ItemProductWidgetState createState() => _ItemProductWidgetState();
}

class _ItemProductWidgetState extends State<ItemProductWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.product == null ?
    SizedBox(
      width: 144,
      height: 258,
    ) : InkWell(
      onTap: () {

      },
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.detail);
        },
        child: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: 144,
              height: 258,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: grayLight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(left: 14),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(getSourceByNameImage('ic_discount_flag')),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text('10%', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),) /* add child content here */,
                      ),
                      Spacer(),
                      Container(
                        height: 27,
                        width: 27,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(7.0),
                        child: Image(
                          image: AssetImage(getSourceByNameImage('ic_love')),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(getSourceByNameImage('ic_template_item'),
                          fit: BoxFit.contain,
                          height: 126,
                          width: 126,
                        ),
                        SizedBox(height: 18,),
                        Text(widget.product!.name, style: TextStyle(color: black, fontWeight: FontWeight.normal, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 3,),
                        SizedBox(height: 5,),
                        Text('Rp 720.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 12),),
                        SizedBox(height: 5,),
                        Text('Rp 700.000', style: TextStyle(color: blackLighter, fontWeight: FontWeight.bold, fontSize: 8),),
                        SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StarRatingWidget(
                              rating: 2.3,
                              onRatingChanged: (rating) {
                                setState(() {

                                });
                              }, starCount: 5,
                            ),
                            Text('155', style: TextStyle(color: blackLight, fontWeight: FontWeight.normal, fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
