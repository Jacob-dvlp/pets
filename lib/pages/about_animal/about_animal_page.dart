import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/pages/about_animal/widget/about_animal_custom_widget.dart';

import './about_animal_controller.dart';

class AboutAnimalPage extends GetView<AboutAnimalController> {
  const AboutAnimalPage({Key? key}) : super(key: key);
  static const String routName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0XFFfbfbfb),
      body: const AboutAnimalCustomWidget(),
    );
  }
}
