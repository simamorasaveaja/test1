import 'package:setoko/network/models/response/allo_response.dart';
import 'package:setoko/network/models/response/register_page_response.dart';
import 'package:setoko/pages/register/store/register_service.dart';

abstract class RegisterRepository {
  Future<RegisterPageResponse?> getData();
  Future<AlloResponse?> getAllo(String path);
}

class RegisterImplRepository implements RegisterRepository {

  RegisterService _service = RegisterService();

  @override
  Future<RegisterPageResponse?> getData() async {
    return await _service.getData();
  }

  @override
  Future<AlloResponse?> getAllo(String path) async{
    return await _service.getAllo(path);
  }

}