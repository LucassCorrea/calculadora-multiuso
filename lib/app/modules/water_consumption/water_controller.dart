import 'package:calculadora_multiuso/app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaterController extends GetxController {
  final formKey = GlobalKey<FormState>();

  var peso = 0.obs;

  late final controllerForm = TextEditingController();

  sendInfo() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.agua_resultado);
    }
  }

}
