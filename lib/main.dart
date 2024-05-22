import 'package:flutter/material.dart';
import 'package:task_project/pages/mobile_layout.dart';
import 'package:task_project/pages/web_layout%20.dart';
import 'package:task_project/reponsive/reponsive_leyout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
