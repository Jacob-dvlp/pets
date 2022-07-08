import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/models/cats/model_response_cat.dart';
import '../../infra/providers/cat_provider.dart';
import '../../infra/storege/storege.dart';
import 'cat_page.dart';

class CatController extends GetxController with StateMixin {
  final CatProvider catProvider;
  final textSearch = TextEditingController();
  List<RequestDadaJsonModelCat> modelList = [];
  List<RequestDadaJsonModelCat> searchCat = [];

  CatController(this.catProvider);

  Future resultDataofCats() async {
    try {
      change([], status: RxStatus.loading());
      modelList = await catProvider.resultDateofCats();
      Get.offNamed(CatPage.routeName);
      change([], status: RxStatus.success());
    } catch (e) {
      change(
        [],
        status: RxStatus.error('Falha na conexão'),
      );
    }
  }

 Future remove() async {
    await StoregeData().removeEmail();
  }

  searchCats() {
    final modelCat = modelList.where((cats) {
      final name = cats.name!.toLowerCase();
      return name.contains(textSearch.text);
    }).toList();
    searchCat = modelCat;
    update();
  }

  @override
  void onInit() {
    resultDataofCats();
    textSearch.addListener(searchCats);
    super.onInit();
  }

  @override
  void dispose() {
    textSearch.removeListener(searchCats());
    super.dispose();
  }
}
