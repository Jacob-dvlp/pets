import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_page.dart';
import 'dogs_controller.dart';
import 'widgets/dog_custom_body_top_widget.dart';
import 'widgets/dog_custom_widget.dart';
import 'widgets/dog_search_custom_widget.dart';

class DogsPage extends GetView<DogsController> {
  const DogsPage({Key? key}) : super(key: key);
  static const String routName = '/dog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cachorros'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(LoginPage.routName);
                controller.remove();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: controller.obx(
        (state) {
          return controller.textSearch.text.isNotEmpty
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      DogCustomBodyTopWidget(),
                      DogSearchCustomWidget(),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      DogCustomBodyTopWidget(),
                      DogCustomWidget(),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
