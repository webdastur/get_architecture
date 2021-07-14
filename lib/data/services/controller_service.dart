import 'package:get/get.dart';
import 'package:get_architecture/data/controllers/count_controller.dart';

class ControllerService {
  static Future<void> init() async {
    await Get.putAsync<ControllerService>(() async {
      final controllerService = ControllerService();
      await controllerService.create();
      return controllerService;
    });
  }

  Future<void> create() async {
    Get.put<CountController>(CountController(), permanent: true);
  }

  CountController get countController => Get.find<CountController>();
}
