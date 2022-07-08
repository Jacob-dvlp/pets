import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/models/user/user_response.dart';
import '../../infra/providers/login_provider.dart';
import '../../infra/storege/storege.dart';
import '../cats/cat_page.dart';

class LoginController extends GetxController {
  final LoginProvider loginProvider;
  final textEditeController = TextEditingController();
  List<RequestDadaJsonModelLogin> users = [];
  List emailUser = [];
  LoginController(this.loginProvider);
  bool isLoading = false;

  void login({String? input}) {
    loginLoading(true);
    final loginEmail = users.where((user) {
      final email = user.email == input;
      return email;
    }).toList();
    emailUser = loginEmail;
    if (textEditeController.text.isEmpty) {
      Get.snackbar('Email', 'Este campo é obrigatório',
          backgroundColor: Colors.red);
    } else if (emailUser.isNotEmpty) {
      Get.offNamed(CatPage.routeName);
      StoregeData().writeData(input!);
    } else if (emailUser.isEmpty) {
      Get.snackbar(
        'Login erro',
        'Este $input email não existe!',
        backgroundColor: Colors.red,
      );
    }
    update();

    loginLoading(false);
  }

  loginLoading(bool value) {
    isLoading = value;
    update();
  }

  Future readEmail() async {
    try {
      users = await loginProvider.loginUser();
    } catch (e) {
      Get.snackbar(
        'Falha',
        'Opss erro ao  buscar os dados',
        dismissDirection: DismissDirection.down,
        backgroundColor: Colors.red,
      );
    }
  }

  @override
  void onInit() {
    readEmail();
    super.onInit();
  }

  @override
  void dispose() {
    textEditeController.dispose();
    super.dispose();
  }
}
