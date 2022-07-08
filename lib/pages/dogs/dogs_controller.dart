import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/models/dogs/model_response_dog.dart';
import '../../infra/providers/dog_provider.dart';
import '../../infra/storege/storege.dart';

class DogsController extends GetxController with StateMixin {
  final DogProvider dogtProvider;
  final textSearch = TextEditingController();

  List<ResponseModelDog> modelList = [];
  List<ResponseModelDog> searchDogs = [];

  DogsController(this.dogtProvider);
  Future resultDataofDogs() async {
    try {
      change([], status: RxStatus.loading());
      modelList = await dogtProvider.resultDateofDogs();
      change([], status: RxStatus.success());
    } catch (e) {
      change(
        [],
        status: RxStatus.error('Falha na conexão'),
      );
    }
  }

  searchDog() {
    final modelCat = modelList.where((dogs) {
      final name = dogs.name!.toLowerCase();
      return name.contains(textSearch.text);
    }).toList();
    searchDogs = modelCat;
    update();
  }

  Future remove() async {
    await StoregeData().removeEmail();
  }

  @override
  void onInit() {
    resultDataofDogs();
    textSearch.addListener(searchDog);
    super.onInit();
  }

  @override
  void dispose() {
    textSearch.removeListener(searchDog);
    super.dispose();
  }
}
