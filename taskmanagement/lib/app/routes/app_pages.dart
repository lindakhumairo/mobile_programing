import 'package:get/get.dart';
import '../modules/add_task/bindings/add_task_binding.dart';
import '../modules/add_task/views/add_task_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
class AppPages {
  static final pages = [
    GetPage(
      name: '/',
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '//add-task',
      page: () => AddTaskView(),
      binding: AddTaskBinding(),
    )
  ];
}