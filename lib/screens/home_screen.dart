import 'package:flutter/material.dart';
import 'package:flutter_weather_app/controller/global_controller.dart';
import 'package:get/get.dart';

import '../widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      //     AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: SafeArea(
        child: Obx(
          () => globalController.checkLoading().isTrue
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  scrollDirection: Axis.vertical,
                  children: [Header()],
                ),
        ),
      ),
    );
  }
}
