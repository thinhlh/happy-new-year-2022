import 'package:get/get.dart';
import 'package:happy_new_year/presentation/screens/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
