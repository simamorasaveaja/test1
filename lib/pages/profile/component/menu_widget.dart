import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class MenuWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgSourceByString;

  const MenuWidget({Key? key, required this.title, required this.subTitle, required this.imgSourceByString}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(imgSourceByString),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17),),
                    Text(subTitle, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
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
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 1,
            color: grayLight,
            width: double.infinity,
          )
        ],
      ),
      color: Colors.white,
    );
  }
}
