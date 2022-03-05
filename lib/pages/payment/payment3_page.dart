import 'package:flutter/material.dart';
import 'package:setoko/config/routes.dart';

class Payment3Page extends StatefulWidget {
  @override
  _Payment3PageState createState() => _Payment3PageState();
}

class _Payment3PageState extends State<Payment3Page> {
  String _pin = "";
  var _pinSymbols = ["\u{25CB}","\u{25CB}","\u{25CB}","\u{25CB}"];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isAuth = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                          'Please Enter your allo Pin',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                                    Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        _pinSymbols[0],
                                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
                                      ),
                                      Text(
                                        _pinSymbols[1],
                                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
                                      ),
                                      Text(
                                        _pinSymbols[2],
                                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
                                      ),
                                      Text(
                                        _pinSymbols[3],
                                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
                                      )
                                    ],
                                  )
                                ]),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _submit(isAuth)
        ],
      ),
    );
  }

  void _handleKeypadClick(String val) {
    setState(() {
      if (_pin.length < 4){
        _pin = _pin + val;
        for (int i=0; i < _pin.length; i++)
          _pinSymbols[i] = "\u{25CF}";
      }
      if (_pin.length < 4){
        isAuth = false;
      } else {
        isAuth = true;
      }
    });
  }

  void _handleKeypadDel() {
    setState(() {
      if (_pin.length > 0) {
        _pin = _pin.substring(0,_pin.length - 1);
        for (int i = _pin.length; i < 4; i++)
          _pinSymbols[i] = "\u{25CB}";
      }
      if (_pin.length < 4){
        isAuth = false;
      } else {
        isAuth = true;
      }
    });
  }

  Positioned _submit(bool isAuth) {
    return Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('1');
                                },
                                child: Text('1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('2');
                                },
                                child: Text('2',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('3');
                                },
                                child: Text('3',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('4');
                                },
                                child: Text('4',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('5');
                                },
                                child: Text('5',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('6');
                                },
                                child: Text('6',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('7');
                                },
                                child: Text('7',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('8');
                                },
                                child: Text('8',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                              FlatButton(
                                onPressed: () {
                                  _handleKeypadClick('9');
                                },
                                child: Text('9',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              )
                            ]),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {

                                  },
                                  child: Text('',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    _handleKeypadClick('0');
                                  },
                                  child: Text('0',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    _handleKeypadDel();
                                  },
                                  child: Text('\u{232b}',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ]),
                        ),
                      ]),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(vertical: 20)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              isAuth == true ? MaterialStateProperty.all<Color>(Colors.yellow) : MaterialStateProperty.all<Color>(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ))),
                      child: Text('Pay'),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(Routes.main, (Route<dynamic> route) => false);
                        Navigator.of(context).pushNamed(Routes.my_order);
                      },
                    ),
                  ),
                ),
              ],
            ));
  }
}
