import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class ItemReorderWidget extends StatefulWidget {

  const ItemReorderWidget({Key? key}) : super(key: key);

  @override
  _ItemReorderWidgetState createState() => _ItemReorderWidgetState();
}

class _ItemReorderWidgetState extends State<ItemReorderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
        padding: const EdgeInsets.all(6.0),
        margin: const EdgeInsets.only(left: 16.0, bottom: 30.0),
        decoration: BoxDecoration(
            border: Border.all(
              color: grayLight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: grayLight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Image(image: AssetImage(getSourceByNameImage('ic_menu_allo')), height: 34,)
            ),
            SizedBox(width: 8.0,),
            Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: grayLight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Image(image: AssetImage(getSourceByNameImage('ic_menu_allo')), height: 34,)
            ),
            SizedBox(width: 8.0,),
            Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: grayLight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Image(image: AssetImage(getSourceByNameImage('ic_menu_allo')), height: 34,)
            ),
            SizedBox(width: 8.0,),
            Container(
                height: 50,
                alignment: Alignment.center,
                child: Text('+20\nitem', style: TextStyle(color: greenPrimary, fontSize: 14),),
            ),
            SizedBox(width: 8.0,),
          ],
        )
    );
  }
}
