import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:intl/intl.dart';
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  Widget build(BuildContext context) {
    // now how to display a Datetime?
    DateTime now = new DateTime.now(); // để lấy thời gian hiện tại
    DateTime someDate = new DateTime(2004,07,01);
    print('Run build()');
    return MaterialApp(
        title: "This is a StatefulWidget",
        home: Scaffold(
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    //someDate.toString(), => in ra ngày tháng năm mình tự xét
                //  now.toString(), // gọi giờ ngày tháng năm
                    //let's use extra library, intl
                    //DateFormat('yyyy/MM/dd').format(now), //=> in ra ngày tháng năm hiện tại với dạng ví dụ: 2020/13/02
                    //DateFormat('yyyy/MM/dd').format(someDate), //=> in ra ngày tháng năm mình tự xét
                    DateFormat.yMMMd().format(now),//=> in ra kiểu date nước ngoài ví dụ: May 2,2020
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                ],
              )
          ),
        )
    );
  }
}