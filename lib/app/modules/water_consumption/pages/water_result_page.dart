import 'package:calculadora_multiuso/app/modules/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class WaterResultPage extends StatefulWidget {
  const WaterResultPage({super.key});

  @override
  State<WaterResultPage> createState() => _WaterResultPageState();
}

class _WaterResultPageState extends State<WaterResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado"),
      ),
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
