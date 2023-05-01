/*
import 'dart:async';

class Logic {
  late StreamController controller; // xử lý logic
  Sink get sink => controller.sink; // khai báo sink để đẩy data vào ống
  Stream get stream =>
      controller.stream; // khai báo stream lấy data ra khỏi ống
  Logic(this.controller);

  addValue(String value) {
    // để add data vào
    sink.add(value);
  }

  printValue() {
    stream.listen((event) {
      print(event.toString());
    });
  }
}

class Logic2 {
  Logic logic;

  Logic2(this.logic);

  addValue(String value) {
    logic.sink.add(value);
  }

  printValue() {
    logic.stream.listen((event) {
      print(event.toString());
    });
  }
}

main() {
  StreamController controller = StreamController();
  Logic logic = Logic(controller); // object
  Logic2 logic2 = Logic2(logic);
  logic2.addValue("value");
  logic2.printValue();

  controller.close();
}
*/
/*
// ================== thêm một stream vào trong chương trình
import 'dart:async';

class Logic {
  late StreamController controller; // xử lý logic
  Sink get sink => controller.sink; // khai báo sink để đẩy data vào ống
  Stream get stream =>
      controller.stream; // khai báo stream lấy data ra khỏi ống
  Logic(this.controller);

  addValue(String value) {
    // để add data vào
    sink.add(value);
  }

  printValue() {
    stream.listen((event) {
      print(event.toString());
    });
  }
}

class Logic2 {
  Logic logic;

  Logic2(this.logic);

  addValue(String value) {
    logic.sink.add(value);
  }

  printValue() {
    logic.stream.listen((event) {
      print(event.toString());
    });
  }
}

main() {
  StreamController controller = StreamController();
  Logic logic = Logic(controller); // object
  Logic2 logic2 = Logic2(logic);
  logic2.addValue("value");

  StreamController stream2 = StreamController();
  stream2.addStream(logic.stream); // thêm 1 stream vào
  logic.addValue('value');
  stream2.stream.listen((event) {
    print(event.toString());
  }) ;

  controller.close();
}
*/
 //=========== xử lý từ 1 class khác ==============
import 'dart:async';

class Logic {
  late StreamController controller; // xử lý logic
  Sink get sink => controller.sink; // khai báo sink để đẩy data vào ống
  Stream get stream =>
      controller.stream; // khai báo stream lấy data ra khỏi ống
  Logic(this.controller);

  addValue(String value) {
    // để add data vào
    sink.add(value);
  }

  printValue() {
    stream.listen((event) {
      print(event.toString());
    });
  }
}

class Logic2 {
  Logic logic;

  Logic2(this.logic);

  addValue(String value) {
    logic.sink.add(value);
  }

  printValue() {
    logic.stream.listen((event) {
      print(event.toString());
    });
  }
}

main() {
  StreamController controller = StreamController();
  Logic logic = Logic(controller); // object
  Logic2 logic2 = Logic2(logic);
  logic2.addValue("value");
  logic2.printValue();

  controller.close();
}