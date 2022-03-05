import 'package:setoko/network/base_service.dart';
import 'package:setoko/network/models/response/category_page_response.dart';
import 'package:setoko/network/queries/category_page_query.dart';
import 'package:setoko/network/type_network.dart';

class CategoryService extends BaseService{

  Future<CategoryPageResponse?> getData() async{
    try {
      var result = await process(TypeNetwork.Query, CategoryPageQuery());
      print(result);
      return CategoryPageResponse.fromJson(result);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

}