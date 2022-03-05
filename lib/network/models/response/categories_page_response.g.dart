// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesPageResponse _$CategoriesPageResponseFromJson(
    Map<String, dynamic> json) {
  return CategoriesPageResponse(
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => CategorySetResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoriesPageResponseToJson(
        CategoriesPageResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
