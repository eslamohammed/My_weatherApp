import 'package:get/instance_manager.dart';
import 'package:my_weatherapp/controller/HomeController.dart';


class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'cairo'));
  }
}
