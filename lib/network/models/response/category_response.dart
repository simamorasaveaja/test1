import 'package:json_annotation/json_annotation.dart';
import 'package:setoko/network/models/response/product_response.dart';

part 'category_response.g.dart';

@JsonSerializable()
class CategorySetResponse{

  final List<CategoryResponse>? categories;

  CategorySetResponse({this.categories});

  factory CategorySetResponse.fromJson(Map<String, dynamic> json) {
    return _$CategorySetResponseFromJson(json);
  }

}

@JsonSerializable()
class CategoryResponse{

  final String name;
  final List<ProductResponse>? products;

  CategoryResponse({this.name = "Tester", this.products});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoryResponseFromJson(json);
  }

}
