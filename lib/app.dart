import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_samples/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'GetX Sample Home Page'),
    );
  }
}
