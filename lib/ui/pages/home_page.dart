import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_architecture/data/controllers/count_controller.dart';
import 'package:get_architecture/data/services/storage_service.dart';

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
              Text("Current lang: ${StorageService.to.getLocale()}"),
              Text("${controller.count}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      CountController.to.decrement();
                    },
                    child: Text("Decrement"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CountController.to.increment();
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
