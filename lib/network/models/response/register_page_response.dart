import 'package:json_annotation/json_annotation.dart';

part 'register_page_response.g.dart';

@JsonSerializable()
class RegisterPageResponse{

  final String? url;

  RegisterPageResponse({this.url});

  factory RegisterPageResponse.fromJson(Map<String, dynamic> json) {
    return _$RegisterPageResponseFromJson(json);
  }

}