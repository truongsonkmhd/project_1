
import 'package:learn_flutter/studyDart/hocClass/phuongTien.dart';

class Car extends Vehicle{
  double engineSize = 0.0; // kích thước động cơ
  double horsePower = 0.0; // mã lực
  Car(String name, int year, this.engineSize, this.horsePower)
      :super(name,year);
  void moTa(){
    print('This car runs width engineSize:$engineSize, horsepower:$horsePower');
  }

  // setter và getter có thể dùng để gọi và xét gtri cho private< vidu: _name> hoặc tự gọi
  // hàm và đặt gtri cho hàm mới
  int get age => DateTime.now().year - year;
  set age(int value){
    year = DateTime.now().year-value;
  }

// override lại để đối tượng in ra trả về dạng chuỗi <toString()>
  @override
  String toString() =>'${super.toString()}, engineSize: $engineSize, horsePower: $horsePower';
}
/*
Trong Flutter, getter và setter được sử dụng để định nghĩa các thuộc tính của một
đối tượng. Một getter là một phương thức được sử dụng để trả về giá trị của một
thuộc tính, trong khi một setter là một phương thức được sử dụng để đặt giá trị
của một thuộc tính.

Để định nghĩa getter và setter cho một thuộc tính trong Flutter, bạn có thể sử
dụng cú pháp sau:

class Person {
  String _name;

  String get name => _name;

  set name(String value) => _name = value;
}
Trong ví dụ này, chúng ta định nghĩa một lớp Person với một thuộc tính _name.
Chúng ta sử dụng getter và setter để truy cập và thiết lập giá trị của thuộc
tính này. Bằng cách sử dụng getter, chúng ta có thể lấy giá trị của _name mà
không cần phải trực tiếp truy cập vào thuộc tính. Tương tự, bằng cách sử dụng
setter, chúng ta có thể thiết lập giá trị của _name mà không cần phải trực tiếp gán giá trị cho thuộc tính.
Để sử dụng getter và setter, bạn có thể gọi chúng bằng cách sử dụng cú pháp sau:

Person person = Person();
person.name = 'John Doe'; // Set the value of the name property.
String name = person.name; // Get the value of the name property.
*/