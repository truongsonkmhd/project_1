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
    return Center(
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style, //là một thuộc tính trong
          // Flutter, được sử dụng để "lấy giá trị của định dạng văn bản mặc định"
          // được sử dụng trong context hiện tại
          children: const <TextSpan>[
            TextSpan(text: 'Hello '),
            TextSpan(
              text: 'bold',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: ' word!!!'),
          ],
        ),
      ),
    );
  }
}
