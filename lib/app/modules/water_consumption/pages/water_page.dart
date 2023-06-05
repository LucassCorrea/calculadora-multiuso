import 'package:calculadora_multiuso/app/core/validators.dart';
import 'package:calculadora_multiuso/app/modules/water_consumption/water_controller.dart';
import 'package:calculadora_multiuso/app/modules/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaterPage extends GetView<WaterController> {
  const WaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumo Diário de Água'),
      ),
      drawer: const DrawerWidget(),
      body: LayoutBuilder(
        builder: (_, constrains) {
          return SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bem vindo(a) à Calculadora de Consumo Diário de Água!",
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 15),
                              child: Text(
                                "Aqui você saberá quanto deve consumir de água diariamente.",
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              "Por favor, forneça as informaçoes abaixo:",
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Informe seu peso:",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: 125,
                              child: Form(
                                key: controller.formKey,
                                child: TextFormField(
                                  controller: controller.controllerForm,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                                  textAlign: TextAlign.center,
                                  validator: (value) =>
                                      Validators.formPeso(value),
                                  textInputAction: TextInputAction.next,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    errorMaxLines: 2,
                                    hintText: "Peso",
                                    suffixText: "kg",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              fixedSize: const Size(200, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () => controller.sendInfo(),
                            child: const Text("Confirmar"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
