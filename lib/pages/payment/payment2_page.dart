import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';

class Payment2Page extends StatefulWidget {
  @override
  _Payment2PageState createState() => _Payment2PageState();
}

class _Payment2PageState extends State<Payment2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  slivers: [
                    SliverAppBar(
                        backgroundColor: Colors.black,
                        // Needed to avoid auto-switching status bar color
                        elevation: 0,
                        floating: true,
                        centerTitle: true,
                        leading: new IconButton(
                          icon: new Icon(Icons.arrow_back_ios_outlined,
                              color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        title: Text(
                          'ALLO PAY',
                          style: TextStyle(
                              color: Colors.white,
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
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Use Allo Points'),
                                      Text('100.000'),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _submit()
        ],
      ),
    );
  }

  Positioned _submit() {
    return Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 20)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ))),
                child: Text('Pay'),
                onPressed: () => Navigator.pushNamed(
                    context, Routes.payment3),
              ),
            ));
  }
}
