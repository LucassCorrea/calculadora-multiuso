import 'package:calculadora_multiuso/app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> infos = [
      {
        "title": "Consumo diário de água",
        "img": "assets/imgs/water-bottle.png",
      },
      {
        "title": "Calculadora IMC",
        "img": "assets/imgs/bmi.png",
      }
    ];

    List routes = [
      AppRoutes.consumo_agua,
      AppRoutes.agua_resultado,
    ];

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: LayoutBuilder(
          builder: (_, constraints) {
            return ListView.separated(
              itemCount: infos.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      infos[index]["img"],
                      fit: BoxFit.contain,
                      height: 25,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    title: Text(
                      infos[index]["title"],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () => Get.toNamed(routes[index]),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 10,
                thickness: 0.5,
              ),
            );
          },
        ),
      ),
    );
  }
}
