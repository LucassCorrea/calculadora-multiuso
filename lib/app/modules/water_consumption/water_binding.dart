import 'package:calculadora_multiuso/app/modules/water_consumption/water_controller.dart';
import 'package:get/get.dart';

class WaterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaterController>(() => WaterController());
  }
}
