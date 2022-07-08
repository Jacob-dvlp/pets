import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/const.dart';
import 'homepage_controller.dart';

class Home extends GetView<HomepageController> {
  const Home({Key? key}) : super(key: key);
  static const String routName = '/';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      init: HomepageController(Get.find(), Get.find()),
      builder: (_) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  maxRadius: 150,
                  backgroundColor: Colors.blue.withAlpha(40),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.withAlpha(20),
                    maxRadius: 120,
                    child: Image.asset(
                      slpash,
                      scale: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'PET´S',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: CircularProgressIndicator(),
              )
            ],
          ),
        );
      },
    );
  }
}
