import 'package:get_architecture/data/services/controller_service.dart';
import 'package:get/get.dart';
import 'package:get_architecture/data/services/storage_service.dart';

class RootService {
  static Future<void> init() async {
    await ControllerService.init();
    await StorageService.init();
  }

  static ControllerService get controller => Get.find<ControllerService>();

  static StorageService get storage => Get.find<StorageService>();
}
