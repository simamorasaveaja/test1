

import 'package:setoko/network/models/response/allo_response.dart';
import 'package:setoko/network/models/response/login_page_response.dart';
import 'package:setoko/pages/login/store/login_service.dart';

abstract class LoginRepository {
  Future<LoginPageResponse?> getData();
  Future<AlloResponse?> getAllo(String path);
}

class LoginImplRepository implements LoginRepository {

  LoginService _service = LoginService();

  @override
  Future<LoginPageResponse?> getData() async {
    return await _service.getData();
  }

  @override
  Future<AlloResponse?> getAllo(String path) async{
    return await _service.getAllo(path);
  }

}