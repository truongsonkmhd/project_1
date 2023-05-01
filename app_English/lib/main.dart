import 'package:app_english/packages/quote/quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/landing_page.dart';

void main() async
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setEnabledSystemUIOverlays([]); để nó không hiện thanh giờ bên trên
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}
