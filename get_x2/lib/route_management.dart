import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigasi dengan GetX')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Kembali ke halaman pertama
          Get.back();
          },
            child: Text("kembali ke Halaman Pertama"),
      ),
    ),
    );
  }
}