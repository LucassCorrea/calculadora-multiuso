import 'package:calculadora_multiuso/app/modules/water_consumption/pages/water_result_page.dart';
import 'package:calculadora_multiuso/app/modules/water_consumption/water_binding.dart';
import 'package:calculadora_multiuso/app/modules/water_consumption/pages/water_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.consumo_agua;
  static final pages = [
    // GetPage(
    //   name: name,
    //   page: page,
    // ),
    GetPage(
      name: AppRoutes.consumo_agua,
      page: () => const WaterPage(),
      binding: WaterBinding(),
    ),
    GetPage(
      name: AppRoutes.agua_resultado,
      page: () => const WaterResultPage(),
      binding: WaterBinding(),
    ),
  ];
}
