 import 'package:learn_flutter/studyDart/hocClass/phuongTien.dart';

class Bicycle extends Vehicle{
  bool hasBasket;
  static const  int  maxSpeed = 100;
  //Contructor width labeled parameters
Bicycle({required String name, required int year, required this.hasBasket})
  :super(name,year);
// bool equals(Object other) =>
//     identical(this, other)||
//         (other is Bicycle &&
//             name == other.name &&
//             year == other.year &&
//             hasBasket == other.hasBasket
//         );
  //Thực thi phương thức so sánh 2 đối tượng với identical,
  // phương thức equals và toán tử ==
@override
bool operator == (Object other) =>
    identical(this, other)||
        (other is Bicycle &&
            name == other.name &&
            year == other.year &&
            hasBasket == other.hasBasket
        );
//=> phương thức tính diện tích sẽ không tính đc gọi là phương thức trừu tượng
  Bicycle copyWith({String? name,int? year, bool? hasBasket}) => Bicycle(
      name: name ?? this.name, // ?? trả về gtri của name, nếu name không phải là 'null'
      // ngược lại trả về gtri của 'this.name'
      //=>Việc sử dụng ?? giúp đảm bảo rằng thuộc tính name của đối tượng
      // mới được khởi tạo sẽ không bị null
      year: year ?? this.year,
      hasBasket: hasBasket ?? this.hasBasket
  );
@override
  String toString() => '${super.toString()}, hasBasket=${hasBasket}';
}
