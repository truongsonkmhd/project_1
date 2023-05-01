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
      backgroundColor: Colors.pink,
      appBar: AppBar(
        // code cho phần appBar:
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Phạm Trường Sơn'),
        leading: Builder(
          builder: (context) => IconButton( // context : bối cảnh
            // khí người dùng nhấn vào IconButton thì nó sẽ mở drawer sử dụng phưogn
            //thứcScaffold.of(context).openDrawer() : nhấp vào nó sã tự động tắt đi
            icon: Icon(Icons.face),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          ),
        ),

        // code cho phần bên trái
        actions:[
          Builder(
          builder: (context) => IconButton( // context : bối cảnh
        // khí người dùng nhấn vào IconButton thì nó sẽ mở drawer sử dụng phưogn
        //thứcScaffold.of(context).openDrawer() : nhấp vào nó sã tự động tắt đi
        icon: Icon(Icons.male),
    onPressed: (){
    Scaffold.of(context).openEndDrawer();
    },
    ),
    )
        ]
      ),





      //======= cách tạo ngăn kéo phía tay trái
      drawer: Drawer( // drawer: ngăn kéo, nó sẽ hiện một icon phục thuộc cta code ở bên trên appBar
        //===== ta code bên trong drawer như sau:
        child: ElevatedButton(  // hành động nhấp vào nó sẽ mất đi__Khi người
          // dùng nhấp vào nó, nó sẽ đóng Drawer bằng cách gọi Navigator.pop(context).
          // Khi người dùng nhấp vào nó, nó sẽ đóng Drawer bằng cách gọi Navigator.pop(context).
          onPressed: () {
            Navigator.pop(context); // hành động nhấp vào nó sẽ mất đi
          },
          child: Text('ok'),
        ),
      ),




      //======= cách tạo ngăn kéo phía tay phải
      endDrawer: Drawer( // drawer: ngăn kéo, nó sẽ hiện một icon "3 thanh ngang"
        //===== ta code bên trong drawer như sau:
        child: ElevatedButton(  // phần tử con của "Drawer"
          onPressed: () {
            Navigator.pop(context); // hành động nhấp vào nó sẽ mất đi__Khi người
            // dùng nhấp vào nó, nó sẽ đóng Drawer bằng cách gọi Navigator.pop(context).
            // Khi người dùng nhấp vào nó, nó sẽ đóng Drawer bằng cách gọi Navigator.pop(context).
          },
          child: Text('cannel'),
        ),
      ),



      body: Container(
        child: Center(
          child: Text('Helooo my friend'),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.share), onPressed: (){

      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // note: centerFloat: nằm ở giữa cuối
                                                                             // centerDocked: căn giữa nó sẽ đè lên father
        // hàm thay đổi vị trí của botton // location: vị trí
      bottomNavigationBar: BottomAppBar(
        // note: bottom Navigation bar: thanh công cụ ở dưới "cùng"
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child:  Text('Happy')),
        )
      );
  }
}
