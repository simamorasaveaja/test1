import 'package:flutter/material.dart';
import 'package:setoko/model/item_courier.dart';
import 'package:setoko/utils/colors.dart';

class DeliveryMethodWidget extends StatefulWidget {
  @override
  _DeliveryMethodWidgetState createState() => _DeliveryMethodWidgetState();
}

class _DeliveryMethodWidgetState extends State<DeliveryMethodWidget> {
  List<ItemCourier> itemCouriers = [
    ItemCourier(
      id: '0',
      title: 'Free Delivery',
      date: '',
      price: 'Free'
    ),
    ItemCourier(
      id: '1',
      title: 'Regular',
      date: '(2-7 days)',
      price: 'Rp 10.000 - Rp 11.000',
      itemMethods: [
        ItemMethod(
          title: 'Setoko Express',
          date: '(1-2 days)',
          price: 'Rp 10.000',
        ),
        ItemMethod(
          title: 'SiCepat',
          date: '(2-3 days)',
          price: 'Rp 11.000',
        ),
        ItemMethod(
          title: 'AnterAja',
          date: '(2-3 days)',
          price: 'Rp 11.000',
        ),
        ItemMethod(
          title: 'J&T',
          date: '(2-3 days)',
          price: 'Rp 11.000',
        ),
      ]
    ),
    ItemCourier(
        id: '2',
        title: 'One Day Delivery',
        date: '(1 day)',
        price: 'Rp 20.000 - Rp 30.000'
    ),
    ItemCourier(
        id: '3',
        title: 'Same Day',
        date: '',
        price: 'Rp 30.000 - Rp 40.000'
    )
  ];

  ItemCourier? _itemCourier;
  ItemMethod? _itemMethod;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: greenLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivery Method', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
          SizedBox(height: 10.0,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: grayLight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    _showModalCourier();
                  },
                  child: Row(
                    children: [
                      Text(_itemCourier!.title, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                ),
                if (_itemMethod != null)
                InkWell(
                  onTap: () {
                    _showModalMethod();
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 1,
                        color: grayLighter,
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(_itemMethod!.title+"("+_itemMethod!.price+")", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
                                Text("Estimated date of arrival 28 Feb - 7 Mar 2020", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                                Text("Terms & Conditions", style: TextStyle(color: greenPrimary, fontWeight: FontWeight.bold, fontSize: 14),),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined)
                        ],
                      )
                    ],
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
    _itemCourier = itemCouriers[1];
    if (_itemCourier!.itemMethods.length > 0) {
      _itemMethod = _itemCourier!.itemMethods[0];
    }
  }

  _showModalCourier() {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Wrap(
        children: [
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
              ),
            ),
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildCourierWidget(context),
            ),
          ),
        ],
      ),
    );
  }

  _buildCourierWidget(BuildContext context) {
    List<Widget> widgetChild = [];
    widgetChild.add(
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("DELIVERY METHOD", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
              child: Icon(Icons.cancel)
          )
        ],
      )
    );
    widgetChild.add(
      SizedBox(height: 12,)
    );
    for (int i = 0 ; i < itemCouriers.length ; i++) {
      widgetChild.add(
        InkWell(
          onTap: () {
            setState(() {
              _itemCourier = itemCouriers[i];
              _itemMethod = null;
              if (_itemCourier!.itemMethods.length > 0) {
                _itemMethod = _itemCourier!.itemMethods[0];
              }
            });
            Navigator.pop(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemCouriers[i].title+itemCouriers[i].date, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
              Text(itemCouriers[i].price, style: TextStyle(color: itemCouriers[i].id == '0' ? greenPrimary : Colors.black87, fontWeight: itemCouriers[i].id == '0' ? FontWeight.bold : FontWeight.normal, fontSize: 14),),
              Container(
                height: 1,
                color: grayLighter,
                margin: const EdgeInsets.only(top: 21, bottom: 13),
              )
            ],
          ),
        )
      );
    }
    return widgetChild;
  }

  _showModalMethod() {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Wrap(
        children: [
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildCourierMethod(context),
            ),
          ),
        ],
      ),
    );
  }

  _buildCourierMethod(BuildContext context) {
    List<Widget> widgetChild = [];
    widgetChild.add(
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("COURIER", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
              Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.cancel)
              )
            ],
          ),
        )
    );
    widgetChild.add(
        SizedBox(height: 12,)
    );
    if (_itemCourier!.itemMethods.length > 0) {
      widgetChild.add(Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommended", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
            Text("Get your order faster and track it real-time.", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
            SizedBox(height: 12,),
            InkWell(
              onTap: () {
                setState(() {
                  _itemMethod = _itemCourier!.itemMethods[0];
                });
                Navigator.pop(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_itemCourier!.itemMethods[0].title+_itemCourier!.itemMethods[0].date, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
                  Text(_itemCourier!.itemMethods[0].price, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  Text('Estimated date of arrival: 27 Feb - 2 Mar 2020', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                ],
              ),
            ),
            SizedBox(height: 12,),
          ],
        ),
      ));
      widgetChild.add(Container(
        height: 14,
        color: grayLighter,
      ));
    }
    if (_itemCourier!.itemMethods.length > 1) {
      widgetChild.add(
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            children: [
              SizedBox(height: 12,),
              Text("Others", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
              SizedBox(height: 12,),
            ],
          ),
        ),
      );
    }
    for (int i = 1 ; i < _itemCourier!.itemMethods.length ; i++) {
      widgetChild.add(
          InkWell(
            onTap: () {
              setState(() {
                _itemMethod = _itemCourier!.itemMethods[i];
              });
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_itemCourier!.itemMethods[i].title+_itemCourier!.itemMethods[i].date, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14),),
                  Text(_itemCourier!.itemMethods[i].price, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  Text('Estimated date of arrival: 27 Feb - 2 Mar 2020', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
                  Container(
                    height: 1,
                    color: grayLighter,
                    margin: const EdgeInsets.only(top: 21, bottom: 13),
                  )
                ],
              ),
            ),
          )
      );
    }
    return widgetChild;
  }
}
