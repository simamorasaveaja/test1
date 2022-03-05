import 'package:setoko/network/type_network.dart';

import 'models/request/base_request.dart';

abstract class NetworkInterface {
  Future<dynamic> process(TypeNetwork typeNetwork, String query, [BaseRequest? request]) ;
}
