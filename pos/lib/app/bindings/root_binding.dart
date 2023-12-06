import 'package:get/get.dart';
import 'package:pos/app/controllers/app_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController(), permanent: true);
  }

}