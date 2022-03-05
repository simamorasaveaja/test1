import 'package:setoko/network/dio/base_service_dio.dart';
import 'package:setoko/network/dio/service_url.dart';
import 'package:setoko/network/models/response/allo_response.dart';
import 'package:setoko/network/models/response/register_page_response.dart';

class RegisterService extends BaseServiceDio{

  Future<RegisterPageResponse?> getData() async{
    final response = await service.post(ServiceUrl.pathRegister());
    return RegisterPageResponse.fromJson(response);
  }

  Future<AlloResponse?> getAllo(String path) async{
    final response = await service.post(path);
    return AlloResponse.fromJson(response);
  }
}