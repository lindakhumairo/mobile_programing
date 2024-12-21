import 'package:get/get.dart';
import '../controllers/task_controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(() => TaskController());
  }
}
