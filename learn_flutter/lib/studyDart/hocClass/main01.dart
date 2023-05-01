import 'package:learn_flutter/studyDart/hocClass/bicycle.dart';
import 'package:learn_flutter/studyDart/hocClass/car.dart';
import 'package:learn_flutter/studyDart/hocClass/phuongTien.dart';

void main() {
  // Vehicle vehicle = Vehicle('vehicle', 2022);
  // print(vehicle);
  //dùng abtract sẽ không dùng đc 2 cái trên
  print('init a car p roject from class');
  Car car1 = new Car("mescerdes", 2018, 199,150); // new có hay không có cũng được
// đây cũng được coi là getter và setter nhưng viết ở  kiểu khác cũng để toạ gtri  gọi gtri và  gán kết quả cho gtri
  // car1.name;
  // car1.year;

  car1.name  = 'lexus';
  car1.year = 2023;
  print(car1);
  // old of cars
  car1.age = 12;
  print(car1.year);





  //add more class
  //create object from bicycle class
  Bicycle bicycle1 = Bicycle(name: 'thống nhất', year: 2022, hasBasket: true);
  print(bicycle1);
  Bicycle bicycle2 = Bicycle(name: 'thống nhất', year: 2022, hasBasket: true);
  // bicycle1 and bicycle2 has the same contents ( bicycle1 có giống nội dung bicycle2 không?
  // nó giống cả địa chỉ lẫn gtri

  // cách 1: dùng equals
// if(bicycle1.equals(bicycle2)){
//   print('2 objects has the same contens');
//   } else{
//   print('2 objects not has the same contents');
//   }
  if(bicycle1 == bicycle2) {
    print('2 object has the same values/contents');
  }
  Bicycle bicycle3 = bicycle1; // Bicycle 3 tham chiếu đến bicycle 1, trỏ tới cùng một vùng nhớ
  if(identical(bicycle1, bicycle3)) {
    print('bicycle1 and bicycle3 are identical');
  }
  print(bicycle1.hashCode);
  print(bicycle2.hashCode);
  print(bicycle3.hashCode);
  if(bicycle1.hashCode == bicycle3.hashCode){
    print('2 identical') ;// identical: giống hệt nhau
  }
// ===== Nhân bản một đối tượng kèm thay đổi một số thuộc tính với hàm copyWith ====
print(bicycle2);
  Bicycle bicycle4 = bicycle2.copyWith(year: 2019);
  print(bicycle4);
  Bicycle bicycle5 = bicycle2.copyWith(name:'bicycle5',year: 2023);
  print(bicycle5);
  
  
  // Hàm static (static const  int  maxSpeed = 100;)
  print("in ra gtri cố định ");
  print(Bicycle.maxSpeed);





  //================Duyệt một danh sách các đối tượng ============
  List<Car> cars = [
    Car('pham', 2011, 123.2, 163),
    Car('son', 2012, 122.2, 167),
    Car('truong', 2013, 113.2, 173),
    Car('cao', 2014, 190.2, 183),
    Car('viet', 2015, 145.2, 153),
    Car('anh', 2016, 167.2, 143),
    Car('nguyen', 2017, 16.2, 133),
    Car('van', 2018, 124.2, 123),
    Car('kim', 2019, 193.2, 113),
    Car('trung', 2020, 178.2, 103),
    Car('lai', 2021, 1673.2, 16),
  ];
  cars.insert(0, Car("thao", 2010, 435.3, 192)); // thêm vào phần tử đầu tiên
  cars.add(Car("phuong", 2004, 231.2, 872)); // mặc định add vào cuối
// =========cách 1: in ra mảng theo dạng chuỗi
  //print('cars: $cars'); //cũng là duyệt mảng nhưng nó sẽ xuất ở dạng chuỗi
// =========cách 2: in mảng theo kiểu forEach
 // cars.forEach((car) { //khi dùng forEach để duyệt thì nó lấy một biến tạm (car) để lưu
    //xong rồi in ra biến tạm đó , điểm khác biệt với for trong c++ là
    //(mặc đinh mỗi phần tử in ra trên một dòng mới, và xuống dòng)
   // print(car);
 // });
// ==========cách 3: in mảng theo kiểu maps
  print('output list');
  cars.asMap().forEach((index, element) {
    /*asMap() trên danh sách cars, nó sẽ tạo ra một map với các khóa (keys)
     được đánh số bắt đầu từ 0 tới n-1 (n là số lượng phần tử trong danh sách),
     và giá trị (values) của từng khóa là phần tử tương ứng trong danh sách.
     Sau đó, phương thức forEach() được gọi để duyệt qua từng phần tử trong bản đồ với cặp khóa-giá trị tương ứng
     => nói chung là asMap nó sẽ biến một array list về 1 maps có {key-values};
     */
    //khi dùng asMap để duyệt thì nó sẽ
    //có 1 key-value trong đó key luôn là một biến đếm bđ từ 0; và nó cx có 1 biến
    //"element" để lưu và in ra giống forEach
    print('$index - $element');
  });
  // - chèn thêm car vào phần tử đầu tiên
  print("=============");


  print("+Tìm kiếm phần tử chỉ định trong danh sách");
  //==============Lọc và tìm kiếm danh sách với hàm filter===============
  List<Car> finlteredCars =
  cars.where((car) => car.year >= 2013 && car.year <= 2016).toList(); // giống kiểu điều kiện where trong sql
  /*
  *giải thích
  * -Iterablecó thể được coi là một chuỗi các giá trị có thể được lặp lại thông qua
  * việc sử dụng vòng for-inlặp hoặc các phương thức lặp khác như map(), where(), take(), skip()v.v
  * +Trong khi đó, nếu bạn chỉ cần một chuỗi các giá trị có thể lặp lại mà không cần tính chất có
  * thứ tự và khả năng truy cập ngẫu nhiên, thì bạn có thể sử dụng một Iterable.
  *
  * -Phương where()thức lấy một hàm gọi lại làm đối số, được sử dụng để kiểm tra từng
  * phần tử trong bộ carssưu tập. Hàm gọi lại sẽ trả về một boolgiá trị cho biết liệu
  * phần tử có được đưa vào chuỗi được lọc hay không.
  *
  *-Trong ví dụ này, hàm gọi lại là (car) => car.year >= 2013 && car.year <= 2016,
  * có nghĩa là hàm sẽ trả về true cho bất kỳ carđối tượng nào có yearthuộc tính từ
  * 2013 đến 2016 (bao gồm) và false cho tất cả các đối tượng khác car.
  * 
  *-Khi where()phương thức được gọi trên bộ cars sưu tập với chức năng gọi lại này,
  * nó sẽ trả về một Iterable chỉ chứa car các đối tượng thỏa mãn điều kiện. Điều này
  * Iterable sau đó được chuyển đổi thành một phương thức List sử dụng toList(),
  * phương thức này trả về một phương thức mới List chứa car các đối tượng được lọc.
  */
  print('+filtered cars:');
  // change an object // thay đổi đối tượng
  finlteredCars[0].name = 'hahaha'; // => Tìm kiếm mục đích để thay đổi
  finlteredCars.asMap().forEach((index,car){
    print('$index - $car');
  });
  print('===============');


  print('+sort the list, by housepower'); // sắp xếp danh sách thoe housepower(mã lực)
  // make a separated list, then sort // tạp 1 đanh sách riêng và sau đó sắp xếp
  List<Car> sortedCars = [...cars];
  //...để sao chép các thành phần của danh sách hiện có cars
  // mặc định bubbles sort : sắp xếp nổi bọt
  sortedCars.sort(((car1,car2) => car2.horsePower.compareTo(car1.horsePower)));
  // muốn sắp xếp tăng dần thì cho cái đầu trước cái sau, sau, ngược lại
  print('after cloned and sorted');
  sortedCars.asMap().forEach((index,car) {
    print('$index - $car');
  });
  //===== get car's name and add to a separated list
  List<String> carNames = cars.map((car) => car.name).toList();
  print(carNames);
/*
+map()phương thức để chuyển đổi từng phần tử của carsdanh sách thành một chuỗi biểu diễn thuộc tính của nó name.
+ Phương thức này toList()sau đó được sử dụng để chuyển đổi kết quả Iterable<String>thành tệp List<String>.
*/

  //==== map trong dart======
  // final Map<String, Object> user = { // in ra các cặp key values
  //   'name':'Hoang',
  //   'email': 'sunlight4d@gmail.com',
  //   'age':18
  // };
  // print(user);
}

