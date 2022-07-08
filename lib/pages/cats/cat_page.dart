import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_page.dart';
import 'cat_controller.dart';
import 'widgets/cat_custom_body_top_widget.dart';
import 'widgets/cat_custom_widget_body.dart';
import 'widgets/cat_search_custom_body.dart';

class CatPage extends GetView<CatController> {
  const CatPage({Key? key}) : super(key: key);
  static const String routeName = '/cat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gatinhos'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                controller.remove();
                Get.offNamed(LoginPage.routName);
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
                      CatCustomBodyTopWidget(),
                      CatSearchCustomBody(),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: const [
                      CatCustomBodyTopWidget(),
                      CatCustomWidgetBody(),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
