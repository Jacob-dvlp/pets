import 'package:get/get.dart';
import './about_animal_controller.dart';

class AboutAnimalBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AboutAnimalController());
    }
}