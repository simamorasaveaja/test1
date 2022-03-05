
import 'package:setoko/config/env.dart';

import 'network_service_dio.dart';

class BaseServiceDio {

  late NetworkServiceDio service;

  BaseServiceDio({String? uri}) {
    if (uri == null) {
      service = NetworkServiceDio(Env.data.alloBaseUrl);
    } else {
      service = NetworkServiceDio(uri);
    }
  }


}