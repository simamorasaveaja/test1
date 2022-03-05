import 'package:setoko/config/env.dart';
import 'package:setoko/network/type_network.dart';

import 'base_query_mutation.dart';
import 'models/request/base_request.dart';
import 'network_interface.dart';
import 'network_service.dart';

class BaseService {

  NetworkInterface? service;

  BaseService({String? uri}) {
    if (uri == null) {
      service = NetworkService(Env.data.apiBaseUrl);
    } else {
      service = NetworkService(uri);
    }
  }

  Future<dynamic> process(TypeNetwork typeNetwork, BaseQueryMutation queryMutation, [BaseRequest? request]) async {
    var response = await service!.process(typeNetwork, queryMutation.value, request);
    return response;
  }

}