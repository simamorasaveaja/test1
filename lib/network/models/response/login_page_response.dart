import 'package:json_annotation/json_annotation.dart';
part 'login_page_response.g.dart';

@JsonSerializable()
class LoginPageResponse{

  final String? url;

  LoginPageResponse({this.url});

  factory LoginPageResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginPageResponseFromJson(json);
  }
}