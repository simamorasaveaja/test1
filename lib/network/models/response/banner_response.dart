import 'package:json_annotation/json_annotation.dart';

part 'banner_response.g.dart';

@JsonSerializable()
class BannerSetResponse{

  final List<BannerResponse>? banners;

  BannerSetResponse({this.banners});

  factory BannerSetResponse.fromJson(Map<String, dynamic> json) {
    return _$BannerSetResponseFromJson(json);
  }

}

@JsonSerializable()
class BannerResponse{

  final List<VariantResponse>? variants;

  BannerResponse({this.variants});

  factory BannerResponse.fromJson(Map<String, dynamic> json) {
    return _$BannerResponseFromJson(json);
  }

}

@JsonSerializable()
class VariantResponse{

  final String? filename;

  VariantResponse({this.filename});

  factory VariantResponse.fromJson(Map<String, dynamic> json) {
    return _$VariantResponseFromJson(json);
  }

}
