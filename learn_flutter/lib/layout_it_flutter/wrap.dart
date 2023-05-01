import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit_sharp),
          onPressed: (){
            print('leading');
          },
        ),
        title: Text('The first flutter app'),
      ),
      body: Container(
          child: Wrap(
            //direction: Axis.vertical, // chiều ngang
            direction: Axis.horizontal, // chiều dọc
            children: [


              Container(
                // width: 100,
                // height: 100,
                color: Colors.grey,
                child: Text('hello thảo xinhhhh gáiiii'),
              ),
              Container(
                // width: 100,
                // height: 100,
                color: Colors.yellow,
                child: Text('hello sơn'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,

              ),

 ],
          )
      ),
    );
  }
}
