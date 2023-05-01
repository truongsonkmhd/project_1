import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// cách 1
class _MyHomePageState extends State<MyHomePage> {
  var text = 'default';
  Future<String> textFunc(){
    return Future.delayed(const Duration(seconds: 2), (()=>'hello'));
  }




  onPressed() async{    // async: khai báo function bất đồng bộ
    text = await textFunc();
    setState(() {
    });

      }



      /*
  Future<void> textFunc() async {
  await Future.delayed(const Duration(seconds: 1));
  print('Delayed');
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*
          Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
          child: ElevatedButton(
              onPressed: onPressed,
              child: Text("click",)
            ),
          ),
          */


          // hàm builder
          Center(
      child: FutureBuilder(
      future: textFunc(),
      /*future: textFunc() là phần quan trọng nhất của FutureBuilder. Nó truyền vào một Future để xử lý và chờ đợi kết quả trả về từ textFunc().
*/
      builder: ((context, snapshot){
        /*
        -context là context hiện tại.
        -snapshot là một đối tượng chứa kết quả trả về của Future được truyền vào future.*/
        if(snapshot.connectionState == ConnectionState.waiting){
          /*Nếu snapshot.connectionState == ConnectionState.waiting(, tức là Future đang trong
          quá trình xử lý, ta hiển thị một CircularProgressIndicator() để thông báo cho người dùng biết rằng dữ liệu đang được xử lý.*/
          return const CircularProgressIndicator();
        }
        if(snapshot.hasData){
          var value = snapshot.data.toString();
          return Text(value);
          /*Nếu snapshot.hasData là true, tức là Future đã hoàn thành và trả về dữ liệu thành công, ta lấy giá
            trị của snapshot.data và hiển thị nó lên màn hình bằng Text.*/
        }
        if(snapshot.hasError){
          print(snapshot.error);
          /*Nếu snapshot.hasError là true, tức là Future xử lý lỗi, ta hiển thị lỗi đó bằng cách in ra snapshot.error.*/
        }
        return Text('text');
      }),
    )
      )

        ],
      ),
    );
  }
}
