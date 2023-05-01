import 'dart:async';
class Logic {
  StreamController countController = StreamController();

  Sink get sink => countController.sink;// một getter trả về 'Sink' của 'countController', cho phép ghi dữ liệu
            // vào stream thông qua phương thức 'add()'

  Stream get stream => countController.stream; // một getter trả về 'stream' của countController cho phép đock
            // dữ liệu từ stream thông qua phương thưucs 'listen'

  int count = 0;

  increase(){ // increase: khi ấn vào nó tăng lên
    count++;
    sink.add(count);
  }

  addValue(String value) {} // phương thức để ghi gtri mới thông quă 'sink.add()'

}
/*
Với StreamController, bạn có thể tạo và quản lý các luồng dữ liệu trong ứng dụng Flutter, gửi dữ liệu từ các
thành phần khác nhau của ứng dụng vào stream thông qua sink.add(), và nhận dữ liệu từ stream thông qua stream.listen().
* */