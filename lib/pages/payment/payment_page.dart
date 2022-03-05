import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverAppBar(
                    backgroundColor: Colors.white,
                    // Needed to avoid auto-switching status bar color
                    elevation: 0,
                    floating: true,
                    centerTitle: true,
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.black87),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    title: Text(
                      'PAYMENT',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey[200],
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Grand Total'),
                                Text('Rp791.000'),
                              ],
                            ),
                            Text('See Details'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text('Allo Payment'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Allo Pay'),
                                    Text(
                                        'Pay with balance and get 10% cashback'),
                                    Text('Balance Rp.2000.000'),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, Routes.payment2),
                                child: Icon(Icons.arrow_forward_rounded),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
