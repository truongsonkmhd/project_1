import 'dart:async';
class Logic {
  StreamController<String> countController = StreamController<String>();
  //Trong đoạn mã trên, class Logic được sử dụng để quản lý một stream dữ liệu kiểu String,
  //và cung cấp các phương thức để ghi giá trị mới vào stream và đọc giá trị từ stream đó.
  Sink get sink => countController.sink;

  Stream get stream => countController.stream;

  addValue(String value){

    // ví dụ thiêt lập điều kiện khi nhập vào :
    // if(value == 'a') nếu không bằng a nó sẽ không add - value
    sink.add(value );
  }

}