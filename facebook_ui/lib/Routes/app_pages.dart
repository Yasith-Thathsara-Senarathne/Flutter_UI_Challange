import 'package:facebook_ui/UI/HomeScreen/home_binding.dart';
import 'package:facebook_ui/UI/HomeScreen/home_screen.dart';
import 'package:facebook_ui/Utils/Constants.dart';
import 'package:get/get.dart';

class AppPages {
  static const INTIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
      transition: Transition.leftToRight,
    ),
  ];
}
