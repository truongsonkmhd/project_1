import 'package:food_app/StreamController2/my_home_page_01.dart';
import 'package:flutter/material.dart';
import 'package:food_app/StreamController/logic.dart';
import 'my_home_page_01.dart';
import '../future/main.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
