import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class AuthModel {
  final String accessToken;
  final String refresToken;
  AuthModel({
    required this.accessToken,
    required this.refresToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accessToken,
      'refres_token': refresToken,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      accessToken: map['access_token'] ?? '',
      refresToken: map['refres_token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source));
}
