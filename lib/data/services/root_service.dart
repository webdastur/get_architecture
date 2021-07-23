import 'package:get_architecture/data/services/controller_service.dart';
import 'package:get_architecture/data/services/storage_service.dart';

class RootService {
  static Future<void> init() async {
    await StorageService.init();
    await ControllerService.init();
  }
}
