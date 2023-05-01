//Định nghĩa và công dụng của map trong dart
//ĐỊNH NGHĨA:Map là một cấu trúc dữ liệu được sử dụng để lưu trữ các cặp khóa-giá trị,
// trong đó mỗi khóa tương ứng với một giá trị.
// Map cho phép truy cập các giá trị thông qua khóa tương ứng với chúng.
//CÔNG DỤNG:
/*1.Lưu trữ các giá trị theo khóa: Map cho phép lưu trữ các giá trị dựa trên khóa tương ứng với chúng.
 Khóa có thể là bất kỳ kiểu dữ liệu nào và giá trị cũng có thể là bất kỳ kiểu dữ liệu nào.
  2.Truy cập giá trị thông qua khóa: Map cho phép truy cập các giá trị thông qua khóa tương ứng với chúng.
  3.Thực hiện các phép toán trên Map: Map hỗ trợ các phép toán như thêm, xóa và cập nhật các cặp khóa-giá trị.
  4.Lưu trữ các giá trị không có thứ tự cụ thể: Tương tự như Set, Map không đảm bảo thứ tự của các phần tử,
    cho phép lưu trữ các cặp khóa-giá trị mà không cần quan tâm đến thứ tự của chúng. */

var map1 = {}; //'id':1->('keys':values)
var map2 = {'id': 1, 'name': 'tin'};
var map3 = {
  'id': 2,
  'name': 'hoa'
}; // nếu key2 giống key1 nó sẽ lấy gtri của key2
var map4 = {'id2': 3, 'name2': 'phuong'};
void main() {
  // kiểm tra phần tử
  print(map1.length);
  // print(map2.length);

  //duyệt map
  // map2.forEach((key, value) {
  //   print('$key - $value');
  // });

  print("=======================");

  // add một {key,values} vào một map cụ thể ở đây là map1
  map1['number 1'] = '1';

  map1.addAll(map2); // gán map2 vào map 1
  map1.addAll(
      map3); // gán map3 vào map 1(do key trùng với map2 nên nó sẽ ưu tiên lấy map3)
  map1.addAll(map4); // gán map4 vào map1

  print(map1.length); // in ra độ dài của map1
  map1.forEach((key, value) {
    // in ra các map
    print('$key - $value');
  });
  print("----------------------");
  // muốn lấy value của map1
  print(map1['name']);

  print(map1.length);
  map1.forEach((key, value) {
    print('$key - $value');
  });

  print("===========6");

  // Truy cập giá trị thông qua khóa
  print(map3['id']);

  print("============");

  //map1.clear(); // xoá tất cả phần tử trong map1
  print(map1.length);

  // Câu lệnh map1.remove('id2') có thể được sử dụng để
  // xóa một phần tử trong đối tượng map1 có khóa là 'id2'.
  map1.remove('id2');

  print("=========================");

  //tìm xem một {'key', value} có trong khoá hay không
  bool check = map1.containsKey('name2');
  bool check2 = map1.containsValue('hoa');
  print(check);
  print(check2);
}
