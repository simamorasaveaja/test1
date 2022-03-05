import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/fun_utils.dart';

class BillPaymentWidget extends StatefulWidget {
  @override
  _BillPaymentWidgetState createState() => _BillPaymentWidgetState();
}

class _BillPaymentWidgetState extends State<BillPaymentWidget> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int selectedIndexTab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(S.of(context).top_up_bill_payment, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          TabBar(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            controller: _tabController,
            onTap: (index) {
              if (selectedIndexTab != index) {
                setState(() {
                  selectedIndexTab = index;
                });
              }
            },
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Image(image: AssetImage(getSourceByNameImage('ic_mobile_prepaid')),),
                    SizedBox(width: 8.0,),
                    Text(S.of(context).mobile_prepaid, style: TextStyle(color: selectedIndexTab == 0 ? blackPrimary : blackLighter, fontWeight: FontWeight.normal, fontSize: 14),),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Image(image: AssetImage(getSourceByNameImage('ic_mobile_postpaid')),),
                    SizedBox(width: 8.0,),
                    Text(S.of(context).mobile_postpaid, style: TextStyle(color: selectedIndexTab == 1 ? blackPrimary : blackLighter, fontWeight: FontWeight.normal, fontSize: 14),),
                  ],
                ),
              ),
            ],
            unselectedLabelColor: blackLighter,
            labelColor: blackPrimary,
            indicatorColor: greenPrimary,
            isScrollable: true,
          ),
          Container(
            height: 1,
            color: grayLight,
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).mobile_number, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.normal, fontSize: 12),),
                SizedBox(height: 3.0,),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: grayLight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 15.0, color: blackPrimary),
                    decoration: new InputDecoration.collapsed(
                      hintText: 'Example: 081012345678',
                      hintStyle: TextStyle(fontSize: 15.0, color: grayPrimary),
                    ),
                  ),
                ),
                SizedBox(height: 12.0,),
                Text(S.of(context).amount, style: TextStyle(color: blackPrimary, fontWeight: FontWeight.normal, fontSize: 12),),
                SizedBox(height: 3.0,),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: grayLight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 15.0, color: blackPrimary),
                    decoration: new InputDecoration.collapsed(
                      hintText: 'Rp25.000',
                      hintStyle: TextStyle(fontSize: 15.0, color: grayPrimary),
                    ),
                  ),
                ),
                SizedBox(height: 17,),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(13.0),
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    width: 147,
                    decoration: BoxDecoration(
                        color: grayPrimary,
                        borderRadius: const BorderRadius.all(Radius.circular(25.0))
                    ),
                    child: Text(S.of(context).buy, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
}
