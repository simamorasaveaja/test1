import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class ItemNewWidget extends StatefulWidget {

  final VoidCallback onTab;

  const ItemNewWidget({Key? key, required this.onTab}) : super(key: key);

  @override
  _ItemNewWidgetState createState() => _ItemNewWidgetState();
}

class _ItemNewWidgetState extends State<ItemNewWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTab,
      child: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          height: 300,
          width: 220,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Stack(
                                children: [
                                  Image(image: AssetImage('assets/images/ic_discount_flag.png'),),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text('10%', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              height: 220,
                              width: 220,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/ic_template_item.png',
                                    fit: BoxFit.contain,
                                    height: 220,
                                  ),

                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image(
                                      image: AssetImage(getSourceByNameImage('ic_love')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.only(left: 18.0, right: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Canomi Humilder', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),),
                                SizedBox(height: 5,),
                                Text('Rp 720.000', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 14),),
                                SizedBox(height: 5,),
                                Text('Rp 700.000', style: TextStyle(color: redMedium, fontWeight: FontWeight.bold, fontSize: 16),),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
