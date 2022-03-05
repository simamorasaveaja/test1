import 'package:json_annotation/json_annotation.dart';

part 'allo_response.g.dart';


@JsonSerializable()
class AlloResponse{

  AlloResponse();

  factory AlloResponse.fromJson(Map<String, dynamic> json) {
    return _$AlloResponseFromJson(json);
  }

}
