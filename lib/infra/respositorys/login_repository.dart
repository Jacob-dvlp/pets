import 'dart:convert';

import 'package:flutter/services.dart';

import '../interface/interface_login_repository.dart';
import '../models/user/user_response.dart';

class LoginRepository extends InterfaceLoginRepository {

  List<RequestDadaJsonModelLogin> responseUser = [];
  @override
  Future<List<RequestDadaJsonModelLogin>> loginUser() async {
    final response = await rootBundle.loadString('assets/json/email_json.json');
    final convertResponse = json.decode(json.encode(response));
    final model = requestDadaJsonModelLoginFromJson(convertResponse);
    responseUser = model;
    return responseUser;
  }
}
