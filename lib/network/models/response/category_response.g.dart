// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySetResponse _$CategorySetResponseFromJson(Map<String, dynamic> json) {
  return CategorySetResponse(
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategorySetResponseToJson(
        CategorySetResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return CategoryResponse(
    name: json['name'] as String,
    products: (json['products'] as List<dynamic>?)
        ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'products': instance.products,
    };
