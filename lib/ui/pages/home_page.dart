import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_architecture/data/controllers/count_controller.dart';
import 'package:get_architecture/data/services/root_service.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CountController>(
        builder: (controller) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Current lang: ${RootService.storage.getLocale()}"),
              Text("${controller.count}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      RootService.controller.countController.decrement();
                    },
                    child: Text("Decrement"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      RootService.controller.countController.increment();
                    },
                    child: Text("Increment"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
