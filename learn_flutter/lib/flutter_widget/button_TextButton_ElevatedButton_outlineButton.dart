import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyWidget(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myButtonStyle = ButtonStyle(
      // tạo độ cong cho button
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(color: Colors.red)
        )
      ),
      // bắt buộc phải kiểu màu nhưu này
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      // thay đổi màu nội dung bên trong
      foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
      // lớp bóng đổ bóng dở dưới
      elevation:MaterialStateProperty.all<double>(10) ,
      // khi hover vào nó sẽ đổi màu khác
      overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
      // điều chỉnh kích cỡ của button
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(40)),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // một nút bấm phải có 2 thuộc tính 1: nội dung bên trong và size
              TextButton(
                child: Text(
                  'Click me!',
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Icon(Icons.cloud_upload , size:80),

                onPressed: () {},
                style: myButtonStyle, // gọi lại hàm đê sử dụng
                ),
              OutlinedButton(
                child: Text(
                  'OutlinedButton',
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {},
                style: myButtonStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

