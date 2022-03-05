// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerSetResponse _$BannerSetResponseFromJson(Map<String, dynamic> json) {
  return BannerSetResponse(
    banners: (json['banners'] as List<dynamic>?)
        ?.map((e) => BannerResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BannerSetResponseToJson(BannerSetResponse instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return BannerResponse(
    variants: (json['variants'] as List<dynamic>?)
        ?.map((e) => VariantResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BannerResponseToJson(BannerResponse instance) =>
    <String, dynamic>{
      'variants': instance.variants,
    };

VariantResponse _$VariantResponseFromJson(Map<String, dynamic> json) {
  return VariantResponse(
    filename: json['filename'] as String?,
  );
}

Map<String, dynamic> _$VariantResponseToJson(VariantResponse instance) =>
    <String, dynamic>{
      'filename': instance.filename,
    };
