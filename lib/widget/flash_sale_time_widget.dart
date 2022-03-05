import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class FlashSaleTimeWidget extends StatefulWidget {
  @override
  _FlashSaleTimeWidgetState createState() => _FlashSaleTimeWidgetState();
}

class _FlashSaleTimeWidgetState extends State<FlashSaleTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeLight,
      padding: const EdgeInsets.all(17.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(getSourceByNameImage('ic_flash_sale')),
            width: 26,
            height: 26,
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Row(
              children: [
                Text(S.of(context).flash_sale, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: orangeMedium,
                      borderRadius: const BorderRadius.all(Radius.circular(5.0))
                  ),
                  alignment: Alignment.center,
                  child: Text('12', style: TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 30,
                  width: 20,
                  alignment: Alignment.center,
                  child: Text(':', style: TextStyle(color: blackPrimary, fontSize: 12, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: orangeMedium,
                      borderRadius: const BorderRadius.all(Radius.circular(5.0))
                  ),
                  alignment: Alignment.center,
                  child: Text('12', style: TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 30,
                  width: 20,
                  alignment: Alignment.center,
                  child: Text(':', style: TextStyle(color: blackPrimary, fontSize: 12, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: orangeMedium,
                      borderRadius: const BorderRadius.all(Radius.circular(5.0))
                  ),
                  alignment: Alignment.center,
                  child: Text('12', style: TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
          Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
