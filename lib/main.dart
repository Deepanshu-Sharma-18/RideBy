import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lift/Intro/GettingStarted/gettingstarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RideBy',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: const GettingStarted(),
    );
  }
}
