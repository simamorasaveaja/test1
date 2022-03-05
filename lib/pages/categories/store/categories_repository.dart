import 'package:setoko/network/models/response/categories_page_response.dart';
import 'package:setoko/pages/categories/store/categories_service.dart';

abstract class CategoriesRepository {
  Future<CategoriesPageResponse?> getData();
}

class CategoriesImplRepository implements CategoriesRepository {
  final CategoriesService _categoriesService = CategoriesService();

  @override
  Future<CategoriesPageResponse?> getData() async{
    CategoriesPageResponse? data = await _categoriesService.getData();
    return data;
  }


}