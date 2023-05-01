//======================== tạo loading ======================
// /* định nghĩa(StatelessWidget): trạng thái của input đầu vào để hàm build xử lý cho ra output tương ứng vớI trạng thái mà bạn chuyền vào */
// import 'package:flutter/material.dart'; // gói thư viên chứa Widget
//
// void main() {
//   runApp(MaterialApp(
//     home: SafeArea(
//         child: Scaffold(
//           body: Center(child: MyWidget2(true)),
//         ) // để cách cái phần trên cùng của điện thoại
//     ),
//     debugShowCheckedModeBanner:
//     false, // để xoá cái nhãn đề bug ở trên mành hình
//   ));
// }
//
// // tạo cái loading ở giữa màn hình bằng cách gọi: CircularProgressIndicator()
//
// class MyWidget2 extends StatefulWidget {
//   final bool loading;
//   MyWidget2(this.loading);
//
//   @override
//   State<StatefulWidget> createState() {
//     return MyWidget2State();
//   }
// }
//
// class MyWidget2State extends State<MyWidget2> {
//   @override
//   Widget build(BuildContext context) {
//     return widget.loading
//         ? const CircularProgressIndicator()
//         : const Text(
//         'satefullWidget'); // nó sẽ in ra loading xong rồi chạy 1 thời gian nó sẽ in ra "satefullWidget"
//   }
// }
//
//
//
//

//========= tạo nút bấm xong sau đó hiện loading
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          body: Center(child: MyWidget2(false)),
        ) // để cách cái phần trên cùng của điện thoại
    ),
    debugShowCheckedModeBanner:
    false, // để xoá cái nhãn đề bug ở trên mành hình
  ));
}

// tạo cái loading bằng cách gọi: CircularProgressIndicator()

class MyWidget2 extends StatefulWidget {
  final bool loading;
  MyWidget2(this.loading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {
  late bool _localLoading; // khai báo late để tý nữa có thể thay đổi đc

  @override
  void initState() {
    _localLoading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const CircularProgressIndicator()
        : FloatingActionButton(
        onPressed:
        onClickButton); // gọi widget nút bấm: FloatingActionButton(onPressed: onClickButton)
  } // run =>> nó sẽ hiện một nút bấm,sau đó sẽ hiện loading

  void onClickButton() {
    setState(() {
      _localLoading =
      true; // ban đầu _localLoading đg ở "false" hàm setState(({})):
      // sẽ load lại cái State mới trong Th này ="true" rồi chạy lại "build"
      // vì sử dụng cách khai báo là late nên là nó sẽ thay đổi được gtri gán cho nó sau khi tác động
    });
  }
}



