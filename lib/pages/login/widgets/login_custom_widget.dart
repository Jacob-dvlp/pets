import 'package:flutter/material.dart';

import '../../../constants/const.dart';
import '../../../routes/app_imports_page.dart';
import '../login_controller.dart';

class LoginCustomWidget extends StatelessWidget {
  const LoginCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(
          Get.find(),
        ),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.withAlpha(20),
                      maxRadius: 150,
                      child: CircleAvatar(
                        maxRadius: 100,
                        backgroundColor: Colors.blue.withAlpha(40),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              child: Image.asset(slpash),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        controller: controller.textEditeController,
                        decoration: InputDecoration(
                          label: const Text('Digite email'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: controller.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(),
                            onPressed: () {
                              controller.login(
                                  input: controller.textEditeController.text);
                            },
                            child: const Text("Entrar"),
                          ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
