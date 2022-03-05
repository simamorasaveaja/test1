import 'package:json_annotation/json_annotation.dart';
import 'package:setoko/network/models/response/category_response.dart';

part 'categories_page_response.g.dart';

@JsonSerializable()
class CategoriesPageResponse{

  final List<CategorySetResponse>? categories;

  CategoriesPageResponse({this.categories});

  factory CategoriesPageResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoriesPageResponseFromJson(json);
  }

}