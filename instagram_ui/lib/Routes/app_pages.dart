import 'package:get/get.dart';
import 'package:instagram_ui/UI/Home/home.binding.dart';
import 'package:instagram_ui/UI/Home/home_screen.dart';
import 'package:instagram_ui/Utils/constants.dart';

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
