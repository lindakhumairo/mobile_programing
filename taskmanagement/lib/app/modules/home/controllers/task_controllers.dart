import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../../data/models/task_model.dart';

class TaskController extends GetxController {
  // observable list untuk menyimpan tugas
  RxList<TaskModel> tasks = <TaskModel>[].obs;

  //Metode untuk menambah tugas baru
void addTask(String title, {String description = ''}) {
  final newTask = TaskModel(
      id: Uuid().v4(),
      title: title,
    description: description,
  );
  tasks.add(newTask);
}

//metode untuk menghapus tugas
void deleteTask(String id) {
  tasks.removeWhere((task) => task.id == id);
}
//metode untuk menadai tugas sebagai selesai/belum selesai
void toggleTaskStatus(String id) {
  final index = tasks.indexWhere((task) => task.id == id);
  if(index != -1) {
    tasks[index] = tasks[index].copyWith(
      isCompleted: !tasks[index].isCompleted
    );
  }
}

//method untuk mendapatkan tugas berdasarkan ID
TaskModel? getTaskById(String id) {
  return tasks.firstWhereOrNull((task) => task.id == id);
}

//model untuk mengedit tugas
void editTask(String id,{String? title,String? description}) {
  final index = tasks.indexWhere((task) => task.id == id);
  if (index != 1) {
    tasks[index] = tasks[index].copyWith(
      title: title ?? tasks[index].title,
      description: description ?? tasks[index].description
    );
  }
}
//getter untuk mendapatkan jumlah tugas
int get totalTasks => tasks.length;
int get completedTasks => tasks.where((task) => task.isCompleted).length;
}





