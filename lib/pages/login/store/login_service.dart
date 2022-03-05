import 'package:setoko/network/dio/base_service_dio.dart';
import 'package:setoko/network/dio/service_url.dart';
import 'package:setoko/network/models/response/allo_response.dart';
import 'package:setoko/network/models/response/login_page_response.dart';

class LoginService extends BaseServiceDio{

  Future<LoginPageResponse?> getData() async{
    final response = await service.post(ServiceUrl.pathLogin());
    return LoginPageResponse.fromJson(response);
  }

  Future<AlloResponse?> getAllo(String path) async{
    final response = await service.post(path);
    return AlloResponse.fromJson(response);
  }

}