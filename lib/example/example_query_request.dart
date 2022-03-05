import 'package:json_annotation/json_annotation.dart';
import 'package:setoko/network/models/request/base_request.dart';

part 'example_query_request.g.dart';

@JsonSerializable()
class ExampleQueryRequest extends BaseRequest{

  final int limit;

  ExampleQueryRequest(this.limit);

  @override
  Map<String, dynamic> toMap() {
    return _$ExampleQueryRequestToJson(this);
  }

}