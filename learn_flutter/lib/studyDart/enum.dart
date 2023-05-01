/*enum Person { tin, hoa, phuong }

void main(List<String> args) {
  /*
  print(Person.tin);
  print(Person.tin.name);
  print(Person.values.length);
  print(Person.values[0]);
  print(Person.values[2]);
  print(Person.values.first);
  print(Person.values.last);
  print(Person.values.isEmpty);
  print(Person.values.isNotEmpty);
  print("=====================");
  Person.values.forEach((i) {
    print(i.name);
  });

*/
// ví dụ về tính kiểu dữ liệu đặc biệt được sử dụng để định nghĩa một tập hợp các hằng số

  var name = Person.tin;
//var name = Person.hoa;
//var name = Person.phuong;
//var name = null;


  switch (name) {
    case Person.tin:
      print("Tincoder");
      break;
    case Person.hoa:
      print("hoacoder");
      break;
    case Person.phuong:
      print("phuongcoder");
      break;
    default:
      print('Default');
  }
}
*/
// iterable : có thể lặp lại

var numbers = Iterable.generate(10);
void main(List<String> args) {
  // numbers.forEach((element) {
  //   print(numbers);
  // });
  for (int i = 0; i < numbers.length; i++) {
    print(numbers.elementAt(i));
  }
  // for (var number in numbers) {
  //   print(number);
  // }
  print("==============");
  print(numbers.length);
  print(numbers.first);
  print(numbers.isNotEmpty);
}
