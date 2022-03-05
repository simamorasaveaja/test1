import 'package:setoko/network/models/request/home_page_query_request.dart';
import 'package:setoko/network/models/response/home_page_response.dart';

import 'home_service.dart';

abstract class HomeRepository {
  Future<HomePageResponse?> getDataHome();
}

class HomeImplRepository implements HomeRepository {
  final HomeService _homeService = HomeService();

  @override
  Future<HomePageResponse?> getDataHome() async{
    HomePageResponse? data = await _homeService.getDataHome(HomePageRequest(10));
    return data;
  }


}