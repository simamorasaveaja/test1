import 'package:flutter/material.dart';
import 'package:setoko/model/item_address.dart';
import 'package:setoko/utils/colors.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {

  List<ItemAddress> itemsAddress = [
    ItemAddress(isPriority: true, type: "Home"),
    ItemAddress(isPriority: false, type: "Office"),
    ItemAddress(isPriority: false, type: "Apartment"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverAppBar(
                    backgroundColor: Colors.white,
                    // Needed to avoid auto-switching status bar color
                    elevation: 0,
                    floating: true,
                    centerTitle: true,
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios_outlined, color: Colors.black87),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    title: Text('MY ADDRESSES', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),)
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        Column(
                          children: _listOfAddress(),
                        )
                      ]
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            color: grayPrimary.withOpacity(0.4),
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 13.0, bottom: 13.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: orangePrimary,
                borderRadius: const BorderRadius.all(Radius.circular(24.0))
            ),
            child: Text('+ Add New Address', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
          )
        ],
      ),
    );
  }

  _listOfAddress() {
    List<Widget> listWidget = [];
    for (int i = 0 ; i < itemsAddress.length ; i++) {
      listWidget.add(
        InkWell(
          onTap: () {
            Navigator.pop(context, itemsAddress[i]);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: itemsAddress[i].isPriority ? greenPrimary : grayLight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemsAddress[i].type, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                SizedBox(height: 2.0,),
                Text(itemsAddress[i].name, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
                Text(itemsAddress[i].address, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                Text(itemsAddress[i].number, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
              ],
            ),
          ),
        )
      );
    }
    listWidget.add(SizedBox(height: 20,));
    return listWidget;
  }
}
