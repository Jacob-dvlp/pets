import 'package:get/get.dart';

import '../../infra/providers/dog_provider.dart';
import '../../infra/respositorys/dog_respository.dart';
import 'dogs_controller.dart';

class DogsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DogProvider(Get.find()), fenix: true);
    Get.lazyPut(() => DogRespository(Get.find()), fenix: true);
    Get.lazyPut(() => DogsController(Get.find()), fenix: true);
  }
}
