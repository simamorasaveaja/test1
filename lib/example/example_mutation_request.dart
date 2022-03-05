import 'package:json_annotation/json_annotation.dart';
import 'package:setoko/network/models/request/base_request.dart';

part 'example_mutation_request.g.dart';

@JsonSerializable()
class ExampleMutationRequest extends BaseRequest{

  final String name;

  ExampleMutationRequest(this.name);

  @override
  Map<String, dynamic> toMap() {
    return _$ExampleMutationRequestToJson(this);
  }

}