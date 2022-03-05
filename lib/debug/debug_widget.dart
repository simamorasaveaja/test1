import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:setoko/app/store/main_store.dart';

import '../app.dart';

class DebugWidget extends StatefulWidget {

  const DebugWidget({Key? key}) : super(key: key);

  @override
  _DebugWidgetState createState() => _DebugWidgetState();
}

class _DebugWidgetState extends State<DebugWidget> {

  String? payloadResult;
  MainStore? _mainStore;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
      child: Observer(
        builder: (_) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Language '+ (_mainStore!.language!.code == 'en' ? "English" : "Indonesia")),
                      CupertinoSwitch(
                        value: _mainStore!.language!.code == 'en',
                        onChanged: (value) {
                          _mainStore!.setAppLanguage(value ? 0 : 1);
                        },
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    clipBoard(_mainStore!.tokenFirebase.toString(), context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Token Firebase '+ _mainStore!.tokenFirebase.toString()),
                  ),
                ),
                InkWell(
                  onTap: () {
                    clipBoard(payloadResult.toString(), context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Payload '+payloadResult.toString()),
                  ),
                ),
                InkWell(
                  onTap: () {
                    clipBoard(_mainStore!.deviceId.toString(), context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Device Id '+_mainStore!.deviceId.toString()),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    selectNotificationSubject.stream.listen((String? payload) async {
      setState(() {
        payloadResult = payload;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _mainStore ??= Provider.of<MainStore>(context);
  }

  void clipBoard(String data, BuildContext context) {
    Clipboard.setData(ClipboardData(text: data)).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(data),
      ));
      Navigator.pop(context);
      return null;
    });
  }
}
