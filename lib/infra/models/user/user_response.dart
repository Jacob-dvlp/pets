import 'dart:convert';

List<RequestDadaJsonModelLogin> requestDadaJsonModelLoginFromJson(String str) =>
    List<RequestDadaJsonModelLogin>.from(
        json.decode(str).map((x) => RequestDadaJsonModelLogin.fromJson(x)));

String requestDadaJsonModelLoginToJson(List<RequestDadaJsonModelLogin> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestDadaJsonModelLogin {
  RequestDadaJsonModelLogin({
    this.email,
  });

  String? email;

  factory RequestDadaJsonModelLogin.fromJson(Map<String, dynamic> json) =>
      RequestDadaJsonModelLogin(
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
      };
}
