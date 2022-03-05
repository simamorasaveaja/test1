import 'package:json_annotation/json_annotation.dart';

import 'base_request.dart';

part 'home_page_query_request.g.dart';

@JsonSerializable()
class HomePageRequest extends BaseRequest{

  final int limit;

  HomePageRequest(this.limit);

  @override
  Map<String, dynamic> toMap() {
    return _$HomePageRequestToJson(this);
  }

}