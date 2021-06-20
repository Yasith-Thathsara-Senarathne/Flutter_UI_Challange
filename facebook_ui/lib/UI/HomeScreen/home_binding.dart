import 'package:get/get.dart';
import 'package:facebook_ui/UI/HomeScreen/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
