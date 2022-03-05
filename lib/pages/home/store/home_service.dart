import 'package:setoko/network/base_service.dart';
import 'package:setoko/network/models/request/home_page_query_request.dart';
import 'package:setoko/network/models/response/home_page_response.dart';
import 'package:setoko/network/queries/home_page_query.dart';
import 'package:setoko/network/type_network.dart';

class HomeService extends BaseService{

  Future<HomePageResponse?> getDataHome(final HomePageRequest request) async{
    try {
      var result = await process(TypeNetwork.Query, HomePageQuery(), request);
      print(result);
      return HomePageResponse.fromJson(result);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

}