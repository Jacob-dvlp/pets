import 'package:get/get.dart';

import '../../infra/providers/cat_provider.dart';
import '../../infra/respositorys/cat_repository.dart';
import 'cat_controller.dart';

class CatBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetConnect());
    Get.lazyPut(() => CatProvider(Get.find()), fenix: true);
    Get.lazyPut(() => CatRepository(Get.find()), fenix: true);
    Get.lazyPut(() => CatController(Get.find()));
  }
}
