import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
import 'widgets/login_custom_widget.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);
  static const String routName = '/login';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginCustomWidget(),
    );
  }
}
