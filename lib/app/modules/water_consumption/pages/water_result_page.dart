import 'package:calculadora_multiuso/app/modules/water_consumption/water_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaterResultPage extends GetView<WaterController> {
  const WaterResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WaterResultPage'),
      ),
      body: const SafeArea(
        child: Text('WaterResultController'),
      ),
    );
  }
}
