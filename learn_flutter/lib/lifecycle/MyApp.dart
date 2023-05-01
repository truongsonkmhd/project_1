import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//You can define your own Widget // bạn  có thể định nghĩa giao diện của riêng mình
class MyApp extends StatefulWidget {
  //StatefulWidget has internal "state" // internal: bên trong
  String name;
  int age;

  // contrutor để khởi tạo đối tượng "MyApp"
  MyApp({required this.name, required this.age});//name, age is state ? No !, it is properties (tên tuổi có là trạng thái ko? ko!, nó là tài sản)
  @override


  //Đoạn code này được sử dụng để tạo ra một instance(trường hợp) của lớp state (_MyAppState) cho widget (MyApp)
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
// Đây là khai báo một class _MyAppState là private và kế thừa từ State<MyApp>.
// Ngoài ra, nó còn sử dụng with WidgetsBindingObserver để thêm tính năng quan
// sát trạng thái hoạt động của ứng dụng. Khi có sự kiện thay đổi trạng thái,
// WidgetsBindingObserver sẽ thông báo cho ứng dụng và chạy hàm didChangeAppLifecycleState
// để thực hiện xử lý.

//====== State<MyApp> ý nghĩa là========
/*Trong Flutter, một widget stateful cần phải có một lớp State đi kèm với nó để
quản lý trạng thái của widget. Vì vậy, trong lớp widget stateful,ta phải khai báo lớp State đi kèm với nó.
Trong đó, State<MyApp> chỉ ra rằng lớp State này sẽ quản lý trạng thái cho widget MyApp.
Khi một thay đổi xảy ra về trạng thái của widget MyApp, thì Flutter sẽ gọi đến các phương thức
 trong lớp State đi kèm với nó để cập nhật trạng thái và render lại giao diện.*/


  //when a widget is created and running, there are 3 functions that we may concern: // concern: quan tâm
  //1. initState: trạng thái khởi tạo
  //2.build() is triggered when we call setState(...)
  //3.dispose() is called when state/widget object is removed
  //Now we try to test these functions/methods

  String _email = '';//This is state!
  final emailEditingController = TextEditingController(); // text editting controller: bộ điều khiển soạn thảo văn bản
  @override

  //initState() is a lifecycle method in State class that is called once when the
  // stateful widget is inserted into the widget tree.(là một phương thức vòng đời trong lớp State được gọi một lần khi
  //    widget có trạng thái được chèn vào cây widget.)
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); // binding : rằng buộc , observer: người quan sát
    print('Run initstate()');
  }
  @override
  void dispose() {
    super.dispose();
    //phương thức dispose() được gọi khi đối tượng trạng thái bị xóa khỏi cây widget.
    // Trong phương thức này, super.dispose()được gọi để xử lý đối tượng trạng thái
    // và các tài nguyên liên quan của nó.
    emailEditingController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    //phương thức được gọi để xóa đối tượng trạng thái hiện tại khỏi danh sách người quan sát của WidgetsBindingthể hiện
    print('Run dispose()');
  }
  //when I know "the app is in background/foreground mode" ?
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    //là một phương thức được gọi khi trạng thái vòng đời của ứng dụng thay đổi. Nó được kích hoạt bởi WidgetsBindingObservergiao diện
    super.didChangeAppLifecycleState(state);
    //super được sử dụng để truy cập và gọi các phương thức và thuộc tính của lớp cha của lớp hiện tại,
    //được sử dụng để gọi phương thức didChangeAppLifecycleState của lớp cha (trong trường hợp này là WidgetsBindingObserver).
    if(state == AppLifecycleState.paused) {
      print('App is in Background mode'); // ứng dụng đang ở chế độ nền (ứng dụng khi ta bấm nút nguồn)
    } else if(state == AppLifecycleState.resumed) {
      print('App is in Foreground mode'); // ứng dụng đang ở chế độ bên trong app (khi ta bật app lên)
    }
  }
  @override
  Widget build(BuildContext context) {
    print('Run build()');
    return MaterialApp(
        title: "This is a StatefulWidget",
        home: Scaffold(
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      controller: emailEditingController,
                      onChanged: (text){
                        this.setState((){
                          _email = text;//when state changed(thay đổi) => build() return => reload widget
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(50)
                          ),
                        ),
                        labelText:'Enter your email',
                      ),
                    ),
                  ),
                  Text(
                    'See result here: ',
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                  Text(
                    _email,
                    style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                  ),
                ],
              )
          ),
        )
    );
  }
}