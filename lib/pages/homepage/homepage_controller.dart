import 'package:pets/pages/cats/cat_page.dart';
import 'package:pets/pages/login/login_page.dart';

import '../../infra/providers/cat_provider.dart';
import '../../infra/providers/dog_provider.dart';
import '../../infra/storege/storege.dart';
import '../../routes/app_imports_page.dart';

class HomepageController extends GetxController with StateMixin {
  static HomepageController get to => Get.find();
  final DogProvider dogtProvider;
  final CatProvider catProvider;

  HomepageController(this.dogtProvider, this.catProvider);

  Future getDatas() async {
    try {
      change([], status: RxStatus.loading());
      await dogtProvider.resultDateofDogs();
      await catProvider.resultDateofCats();
      isLogin();
      change([], status: RxStatus.success());
    } catch (e) {
      change(
        [],
        status: RxStatus.error('Falha na conexão'),
      );
    }
  }

  isLogin() {
    if (StoregeData().persistenceLoginRead('email').isEmpty) {
      Get.offNamed(LoginPage.routName);
      update();
    } else if (StoregeData().persistenceLoginRead('email').isNotEmpty) {
      Get.offNamed(CatPage.routeName);
    }
  }

  @override
  void onInit() {
    getDatas();
    super.onInit();
  }
}
