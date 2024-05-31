import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task/screens/main_screen.dart';
import 'package:internship_task/screens/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Internship Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ScreenA(),
      ),
    );
  }
}
