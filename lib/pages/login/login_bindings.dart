import 'package:get/get.dart';

import '../../infra/providers/login_provider.dart';
import '../../infra/respositorys/login_repository.dart';
import 'login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginProvider(Get.find()), fenix: true);
    Get.lazyPut(() => LoginRepository(), fenix: true);
    Get.lazyPut(() => LoginController(Get.find()));
  }
}
