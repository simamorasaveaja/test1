import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:setoko/config/env.dart';
import 'package:setoko/config/routes.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/pages/login/store/login_store.dart';
import 'package:setoko/utils/colors.dart';
import 'package:setoko/utils/local_preference.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginStore? _loginStore;

  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Observer(
            builder: (context) {
              switch (_loginStore?.state) {
                case LoginStoreState.loading:
                  return Center(child: CircularProgressIndicator(backgroundColor: greenPrimary,));
                case LoginStoreState.loaded:
                  return Stack(
                    children: [
                      WebView(
                        initialUrl: _loginStore?.url,
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (WebViewController webViewController) {
                          _controller.complete(webViewController);
                        },
                        onProgress: (int progress) {
                          print("WebView is loading (progress : $progress%)");
                        },
                        // javascriptChannels: <JavascriptChannel>{
                        //   _toasterJavascriptChannel(context),
                        // },
                        navigationDelegate: (NavigationRequest request) {
                          if (request.url.contains(Env.data.alloBaseUrl)) {
                            _loginStore?.getAllo(
                                request.url.replaceAll(Env.data.alloBaseUrl, ''),
                                (response) {
                                  var uri = Uri.dataFromString(request.url);
                                  LocalPreference.setAccessToken(uri.queryParameters['accessToken']!);
                                  LocalPreference.setLogin(true);
                                  Navigator.of(context).pushNamedAndRemoveUntil(Routes.splash, (Route<dynamic> route) => false);
                                },
                                () {

                                }
                            );
                            print('blocking navigation to $request}');
                            print(request.url.replaceAll(request.url.replaceAll(Env.data.alloBaseUrl, ''), ''));
                            return NavigationDecision.prevent;
                          }
                          print('allowing navigation to $request');
                          return NavigationDecision.navigate;
                        },
                        onPageStarted: (String url) {
                          print('Page started loading: $url');
                          _loginStore?.setWebViewState(WebViewState.loading);
                        },
                        onPageFinished: (String url) {
                          print('Page finished loading: $url');
                          _loginStore?.setWebViewState(WebViewState.loaded);
                        },
                        gestureNavigationEnabled: true,
                      ),
                      if (_loginStore?.stateWebView == WebViewState.loading)
                      Container(
                        alignment: Alignment.center,
                        color: black.withOpacity(0.5),
                        child: CircularProgressIndicator(backgroundColor: greenPrimary,),
                      ),
                    ],
                  );
                default:
                  return Center(
                    child: InkWell(
                      child: Container(
                        height: 50,
                        width: 148,
                        decoration: BoxDecoration(
                            color: orangeMedium,
                            borderRadius: const BorderRadius.all(Radius.circular(24.0))
                        ),
                        alignment: Alignment.center,
                        child: Text(S.of(context).try_again, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                      ),
                      onTap: () {
                        _loginStore?.getData();
                      },
                    ),
                  );
              }
            },
          ),
        )
    );

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loginStore ??= Provider.of<LoginStore>(context);
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Error',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
