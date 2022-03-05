import 'package:json_annotation/json_annotation.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/network/models/response/product_response.dart';

import 'banner_response.dart';

part 'home_page_response.g.dart';

@JsonSerializable()
class HomePageResponse{

  final List<BannerSetResponse>? homepageBanners;
  final List<CategorySetResponse>? homepageCategories;
  final List<ProductResponse>? products;

  HomePageResponse({this.homepageBanners, this.homepageCategories, this.products});

  factory HomePageResponse.fromJson(Map<String, dynamic> json) {
    return _$HomePageResponseFromJson(json);
  }

}