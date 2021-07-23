import 'package:get/get.dart';
import 'package:get_architecture/data/controllers/count_controller.dart';

class ControllerService {
  static Future<void> init() async {
    Get.put<CountController>(CountController(), permanent: true);
  }
}
