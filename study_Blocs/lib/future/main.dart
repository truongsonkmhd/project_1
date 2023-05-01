import 'package:flutter/material.dart';
import 'package:food_app/main3.dart';

import 'my_home_page.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}
