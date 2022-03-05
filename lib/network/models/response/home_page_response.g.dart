// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageResponse _$HomePageResponseFromJson(Map<String, dynamic> json) {
  return HomePageResponse(
    homepageBanners: (json['homepageBanners'] as List<dynamic>?)
        ?.map((e) => BannerSetResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    homepageCategories: (json['homepageCategories'] as List<dynamic>?)
        ?.map((e) => CategorySetResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    products: (json['products'] as List<dynamic>?)
        ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HomePageResponseToJson(HomePageResponse instance) =>
    <String, dynamic>{
      'homepageBanners': instance.homepageBanners,
      'homepageCategories': instance.homepageCategories,
      'products': instance.products,
    };
