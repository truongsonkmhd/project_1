import 'package:flutter/material.dart';
import 'package:food_app/StreamController/logic.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Logic logic = Logic();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    logic.countController.close();
  }

  /*
  * Phương thức "dispose()" trong đoạn mã trên có vẻ là một phương thức trong lập trình Flutter
  * hoặc Dart, được sử dụng để giải phóng tài nguyên và giải phóng bộ nhớ khi một widget hoặc một đối
  * tượng khác trong ứng dụng của bạn không còn cần thiết nữa, nhằm tránh rò rỉ tài nguyên và tăng hiệu suất của ứng dụng.
  * */
  onPressed(){
    logic.increase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: StreamBuilder(
                stream: logic.stream,
                builder: ((context, snapshot) => snapshot.hasData // snapshot là data trong stream
                    ? Text(snapshot.data.toString())
                    : CircularProgressIndicator())),
          ),
          Center(
            child:  ElevatedButton(onPressed: onPressed, child: const Text('click'),
            ),
          ),
          /*Khi ta "click" vào thì nó sẽ chạy đến onPressed và login.increase()=> nó sẽ thêm data(sink) vào trong stream
          * xong nó sẽ gọi đến hàm increase
          *  */
        ],
      ),
    );
  }
}
