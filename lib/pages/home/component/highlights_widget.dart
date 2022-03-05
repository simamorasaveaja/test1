import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class HighlightsWidget extends StatefulWidget {

  const HighlightsWidget({Key? key}) : super(key: key);
  @override
  _HighlightsWidgetState createState() => _HighlightsWidgetState();
}

class _HighlightsWidgetState extends State<HighlightsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grayLight,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0),
            child: Row(
              children: [
                Text(S.of(context).setokos_highlights, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
            height: 270,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: greenLight,
                        borderRadius: const BorderRadius.all(Radius.circular(15.0))
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(getSourceByNameImage('ic_logo_setoko')),
                          ),
                          Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Your Daily Needs of Groceries', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),)
                              ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: orangePrimary,
                                borderRadius: const BorderRadius.all(Radius.circular(15.0))
                            ),
                            child: Text('Find More', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 12),),
                          )
                        ],
                      ),
                    )
                ),
                SizedBox(width: 10.0,),
                Expanded(
                    child: Container(
                      height: 250,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
                                  ),
                                  child: Image.asset(
                                    'assets/images/ic_template_item.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
                                  ),
                                  child: Text('Instant Food', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
                                  ),
                                  child: Image.asset(
                                    'assets/images/ic_template_item.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
                                  ),
                                  child: Text('Instant Food', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                SizedBox(width: 10.0,),
                Expanded(
                    child: Container(
                      height: 250,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
                                  ),
                                  child: Image.asset(
                                    'assets/images/ic_template_item.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
                                  ),
                                  child: Text('Instant Food', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
                                  ),
                                  child: Image.asset(
                                    'assets/images/ic_template_item.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
                                  ),
                                  child: Text('Instant Food', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 10),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
