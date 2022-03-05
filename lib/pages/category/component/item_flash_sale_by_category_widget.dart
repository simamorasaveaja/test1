import 'package:flutter/material.dart';
import 'package:setoko/network/models/response/product_response.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class ItemFlashSaleByCategoryWidget extends StatefulWidget {
  final ProductResponse product;
  final VoidCallback onTab;

  const ItemFlashSaleByCategoryWidget({Key? key, required this.product, required this.onTab}) : super(key: key);

  @override
  _ItemFlashSaleByCategoryWidgetState createState() => _ItemFlashSaleByCategoryWidgetState();
}

class _ItemFlashSaleByCategoryWidgetState extends State<ItemFlashSaleByCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTab,
      child: Container(
          height: 310,
          width: 144,
          padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 144,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Column(
                    children: [
                      Stack(
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
                                SizedBox(height: 5,),
                                Text(widget.product.name, style: TextStyle(color: blackMedium, fontWeight: FontWeight.normal, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 2,),
                                SizedBox(height: 5,),
                                Text('Rp 720.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 12),),
                                SizedBox(height: 5,),
                                Text('Rp 700.000', style: TextStyle(color: blackLighter, fontWeight: FontWeight.bold, fontSize: 8),),
                                SizedBox(height: 5,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 12),
                    width: 100,
                    height: 8,
                    decoration: BoxDecoration(
                        color: orangePrimary,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0))
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 12, bottom: 12),
                      height: 8,
                      decoration: BoxDecoration(
                          color: orangeLight,
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0))
                      ),
                    ),
                  ),
                ],
              ),
              Text('10 Items Left', style: TextStyle(color: blackMedium, fontWeight: FontWeight.normal, fontSize: 10),),
            ],
          )
      ),
    );
  }
}
