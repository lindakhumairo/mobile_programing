import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/',page: () =>HomePage()),
        GetPage(name: '/second',page: () =>SecondPage()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Named dengan GetX")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //menggunakan route named untuk navigasi
            Get.toNamed('/second');
          },
          child: Text("Pindah ke Halaman Kedua"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //kembali ke halaman pertama
          },
          child: Text("kembali ke Halaman Pertama"),
        ),
      ),
    );
  }
}