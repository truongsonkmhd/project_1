import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily:
        'Dancing Scrip' // ====================nó sẽ xét cho  all các text trong flutter=======================
    ),
    home: SafeArea(
        child: Scaffold(
          body: Center(child: MyWidget()),
        )),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
        'initState() là một hàm ghi đè (override) của lớp State,'
            'nó được gọi khi widget được tạo ra lần đầu tiên. Trong phương thức này, '
            'chúng ta thường khởi tạo các giá trị ban đầu cho các biến và thu'
            ' ộc tính của widget ',
        textDirection:
        TextDirection.ltr, // viết từ trái quá phải gần như bắt buôc phải co
        textAlign: TextAlign.right, // lề bên phải
        //textAlign:TextAlign.center, // lề giữa
        //textAlign:TextAlidn.jutify,
        // Xét tối đa đoạn bao nhiêu dòng:
        maxLines: 3, // nếu viết hơn 3 dòng nó cx chỉ hiện thị 3 dòng
        overflow: TextOverflow
            .ellipsis, // nếu ko đủ kích thước hiện thị "..." ở phía cuối
        // overflow: TextOverflow.visible, // tràn ra ngoài ô chứa
        textScaleFactor: 1.5, // cỡ chữ
        style: TextStyle(
          color: Colors.pink, // đổi màu chữ
          backgroundColor: Colors.green, // background
          fontSize: 30, // đơn vị là "px"
          fontWeight: FontWeight.w400, // độ đậm nhạt của chữ(thường đề 400)
          fontStyle: FontStyle.normal, // kiểu chữ(in nghiêng ".italic")

          wordSpacing: 20, // khoảng cách giữa các từ
          letterSpacing: 10, // khoảng cách giữa các kí tự trong 1 từ
          decoration: TextDecoration.none, // kiểu bthg
          //decoration:TextDecoration.underline, // gạch chân phía dưới
          //decoration:TextDecoration.overline, // gạch chân bên trên
          //decoration:TextDecoration.lineThrough,// gạch giữa chữ
          fontFamily:
          'Times New Roman', // ================thay đôi font chữ cho một phần mình đang xét====================
        ));
  }
}
