

import 'package:setoko/network/models/response/category_page_response.dart';
import 'package:setoko/pages/category/store/category_service.dart';

abstract class CategoryRepository {
  Future<CategoryPageResponse?> getData();
}

class CategoryImplRepository implements CategoryRepository {
  final CategoryService _categoryService = CategoryService();

  @override
  Future<CategoryPageResponse?> getData() async{
    CategoryPageResponse? data = await _categoryService.getData();
    return data;
  }


}