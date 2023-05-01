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
      body: Center(
        /*
        child: Text(
          'phạm trường sơn lớp tin16a3hn ',
         // overflow: TextOverflow.ellipsis, // nếu nó text chàn màn hình nó sẽ xuất hiện dấu "...
          overflow: TextOverflow.clip, // chữ sẽ nhảyu xuống dòng
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
          */
        //==== thêm hình ảnh
        //child: Image.network('https://i.pinimg.com/736x/a2/98/16/a29816cd63e5d731cc70cfd3f88c2ce8.jpg'),
// ======= test button==========
      // TextButton khác ElevatedButton chỗ nào => khác chỗ kiểu design
        /*
      child: TextButton.icon(
        icon: Icon(Icons.ac_unit_sharp),
        label: Text("hello my friend!!"),
        onPressed: (){
          print('click me');
        },
      ),
        */
        /*
 // ======= ElevatedButton button==========
        child: ElevatedButton.icon(
            icon: Icon(Icons.ac_unit_sharp), label: Text('hihi'),
          onPressed:() {
          print("hello");
        }
        ),
        */
        child: Text.rich(
          TextSpan(text: 'HI ',children: [
            TextSpan(
              text:'Thea !',
              style:
                TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
            ),
            TextSpan(
              text:'hello my friend!',
              style:
              TextStyle(fontWeight: FontWeight.normal),
            )
          ]),
          style: TextStyle(color: Colors.blue), // xét cho cả text còn textPan là
          // những text con nếu ko xét cho textPan thì nó sẽ mặc định là lấy cái này
        ),
      ),
    );
  }
}
