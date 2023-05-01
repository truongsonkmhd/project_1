import 'package:flutter/material.dart';
import 'package:learn_flutter/flutter_widget/button_TextButton_ElevatedButton_outlineButton.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyWidget() ,
      ),
    ),
    debugShowCheckedModeBanner: false,
  ),
  );
}
class MyWidget  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.blue,
      margin: EdgeInsets.all(20),
      child: Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Text("phạm trường sơn!!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
      ),
      ),
    );
  }
}

/*
 -Padding và margin là hai thuộc tính được sử dụng để định vị và căn chỉnh các
phần tử trên trang web.
 -Padding là khoảng cách giữa nội dung của một phần tử và viền của nó. Khi bạn
thiết lập giá trị padding cho một phần tử, nội dung của phần tử sẽ được căn chỉnh
bên trong phần tử đó, bên trong khoảng cách được xác định bởi giá trị padding.

-Margin là khoảng cách giữa phần tử và các phần tử khác xung quanh nó. Khi bạn
thiết lập giá trị margin cho một phần tử, khoảng cách giữa phần tử và các phần
tử khác xung quanh nó sẽ được xác định bởi giá trị margin.

-Để đơn giản hóa, bạn có thể tưởng tượng rằng padding là khoảng trống bên trong
phần tử, trong khi margin là khoảng trống xung quanh phần tử.*/