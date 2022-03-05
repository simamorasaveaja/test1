import 'package:setoko/config/url_constants.dart';

class Env {
  static EnvData? _env;

  static EnvData get data => _env!;


  static void init(bool isRelease) {
    _env = isRelease ? Env.prod : Env.dev;
  }

  static final EnvData dev = EnvData(
    debug: true,
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    title: "SETOKO TEST",
    alloBaseUrl: UrlConstants.DEV_ALLO_BASE_URL,
    apiBaseUrl: UrlConstants.DEV_API_BASE_URL,
  );

  static final EnvData prod = EnvData(
    debug: false,
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    title: "SETOKO",
    alloBaseUrl: UrlConstants.PROD_ALLO_URL,
    apiBaseUrl: UrlConstants.PROD_API_URL,
  );
}

class EnvData {
  final bool debug;
  final bool debugShowCheckedModeBanner;
  final bool debugShowMaterialGrid;
  final String title;
  final String alloBaseUrl;
  final String apiBaseUrl;

  EnvData({
    required this.debug,
    required this.debugShowCheckedModeBanner,
    required this.debugShowMaterialGrid,
    required this.title,
    required this.alloBaseUrl,
    required this.apiBaseUrl,
  });

}
