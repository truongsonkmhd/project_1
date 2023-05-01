// class Vehicle{ // vehicle: phương tiện giao thông
//   String name;
//   int year;
//   Vehicle(this.name, this.year);
//   @override
//   String toString() => 'name: $name year: $year';
// }
//=== abtract: trừu tượng: ví dụ (abtract class hình)
//=> phương thức tính diện tích sẽ không tính đc gọi là phương thức trừu tượng
abstract class Vehicle{ // vehicle: phương tiện giao thông
  String name;
  int year;
  Vehicle(this.name, this.year);
  // override lại để đối tượng in ra trả về dạng chuỗi <toString()>
  @override
  String toString() => 'name: $name year: $year';
  //=================  Duyệt danh sách các đối tượng ================
}