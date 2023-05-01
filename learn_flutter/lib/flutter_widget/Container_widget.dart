import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
     // child: MyWidget(),
      child: MyHomePage(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Widget Demo'),
//       ),
//       body: Container(
//         child: Center(
//           child: Text(
//             'Hello world',
//             style: TextStyle(
//               color: Colors.green,
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         decoration: BoxDecoration(
//           shape: BoxShape.rectangle,
//           /*đó có nghĩa là bạn muốn định hình cho BoxDecoration là hình chữ nhật.
//           Bạn cũng có thể sử dụng các giá trị khác của BoxShape như BoxShape.circle
//           để tạo hình dạng tròn hoặc BoxShape.circle để tạo hình vuông.
//            */
//           color: Colors.red,
//           borderRadius: BorderRadius.all(
//             Radius.circular(20.0),
//           ),
//         ),
//         margin: EdgeInsets.all(70),
//         padding: EdgeInsets.all(40),
//         transform: Matrix4.rotationZ(-pi / 50),
//       ),
//     );
//   }
// }


//============== tính chất conataner=======================


// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('WRAP WIDGET'),
//         ),
//         body: Center(
//           child: Wrap(
//             crossAxisAlignment: WrapCrossAlignment.end,//
//             //direction: Axis.vertical,//:sắp xếp theo cột
//             //runSpacing:10, // : khoảng cách giữa các hàng nếu ta xét hàng, các cột nếu ta xét cột
//             alignment: WrapAlignment.center, // tự động xuống dòng, căn giữa , tự động "responsive": trog trườn hợp
//                     // dùng máy ảo ko có responsive vì nó cố địh chứ thực thế nó ở nhiều dòng máy
//             //alignment: WrapAlignment.end // tự động xuốn dòng, sát lề bên right, tự động responsive
//             //alignment: WrapAlignment.start // tự động xuốn dòng, sát lề bên left, tự động responsive
//             //alignment: WrapAlignment.spaceBetween // tự động xuốn dòng, tự test, tự động responsive
//             //....
//             children: <Widget>[
//               MyContainer(),
//               MyContainer(),
//               MyContainer(),
//               MyContainer(),
//             ],
//           ),
//         ));
//   }
// }
// class MyContainer extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(5),
//       width: 50,
//       height: 50,
//       color: Colors.red,
//     );
//   }
//
// }




// ===========expanded ===============
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WRAP WIDGET'),
        ),
        body: Center(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,//spaceAround: nó sẽ tản ra xung quanh nhưng mà cách đều
                                                          //spaceBetwen: nó sẽ tản ra xung quanh nhưng nó sẽ sát vào lề hai bên
            children: <Widget>[
              MyContainer(),
             // MyContainer(),
             // MyContainer(),//Expanded(flex:1,child: MyContainer()), // nó sẽ mở rộng thằng số 3 hết mức có thể
              Expanded(flex:3,child: MyContainer()),
              Expanded(flex:1,child: MyContainer()),
              // => nó sẽ chia thành 4 phần 3 phần cho cái ở giữa 1 phần còn lại cho cái ở cuối
            ],
          ),
        ));
  }
}
class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }

}
