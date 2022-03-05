import 'package:json_annotation/json_annotation.dart';

part 'category_page_response.g.dart';

@JsonSerializable()
class CategoryPageResponse{

  CategoryPageResponse();

  factory CategoryPageResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoryPageResponseFromJson(json);
  }
}