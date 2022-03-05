import 'package:flutter/material.dart';
import 'package:setoko/network/models/response/product_response.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class ItemNewWidget extends StatefulWidget {

  final ProductResponse product;
  final VoidCallback onTab;

  const ItemNewWidget({Key? key, required this.onTab, required this.product}) : super(key: key);

  @override
  _ItemNewWidgetState createState() => _ItemNewWidgetState();
}

class _ItemNewWidgetState extends State<ItemNewWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTab();
      },
      child: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 18.0),
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
                      Text(widget.product.name, style: TextStyle(color: blackMedium, fontWeight: FontWeight.normal, fontSize: 12), overflow: TextOverflow.ellipsis, maxLines: 3,),
                      SizedBox(height: 5,),
                      Text('Rp 720.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.normal, fontSize: 12),),
                      SizedBox(height: 5,),
                      Text('Rp 700.000', style: TextStyle(color: blackLight, fontWeight: FontWeight.normal, fontSize: 8),),
                      SizedBox(height: 5,),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
