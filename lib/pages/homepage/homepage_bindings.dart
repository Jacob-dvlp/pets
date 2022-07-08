import 'package:get/get.dart';

import '../../infra/providers/cat_provider.dart';
import '../../infra/providers/dog_provider.dart';
import '../../infra/respositorys/cat_repository.dart';
import '../../infra/respositorys/dog_respository.dart';
import 'homepage_controller.dart';

class HomepageBindings implements Bindings {
  @override
  void dependencies() {
    //Dog
    Get.lazyPut(() => GetConnect(), fenix: true);
    Get.lazyPut(() => DogProvider(Get.find()), fenix: true);
    Get.lazyPut(() => DogRespository(Get.find()), fenix: true);
    //Cat
    Get.lazyPut(() => CatProvider(Get.find()), fenix: true);
    Get.lazyPut(() => CatRepository(Get.find()), fenix: true);
    //login
    Get.lazyPut(() => HomepageController(Get.find(), Get.find()), fenix: true);
  }
}
