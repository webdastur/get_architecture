import 'package:get/get.dart';
import 'package:get_architecture/data/utils/app_logger_util.dart';

class CountController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    AppLoggerUtil.i("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    AppLoggerUtil.i("onInit");
  }
}
