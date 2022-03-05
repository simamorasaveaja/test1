import 'package:setoko/network/base_service.dart';
import 'package:setoko/network/models/response/categories_page_response.dart';
import 'package:setoko/network/queries/categories_page_query.dart';
import 'package:setoko/network/type_network.dart';

class CategoriesService extends BaseService{

  Future<CategoriesPageResponse?> getData() async{
    try {
      var result = await process(TypeNetwork.Query, CategoriesPageQuery());
      print(result);
      return CategoriesPageResponse.fromJson(result);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

}