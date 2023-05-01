// =====sets: có value thôi ko có cặp {key, value} như map
//== DỊNH NGHĨA: lưu trữ các gtri không có thứ tự cụ thể: Set không đảm bảo thứ tự của các phần tử,
//cho phép lưu trữ các gtri mà không cần quan tâm đến thứ tự của chúng
// công dụng của set trong dart
//+ loại bỏ các phần tự trùng lặp(1)
//+Thực hiện các phép toàn tập hợp như: giao và hợp
//+Kiểm tra sự tồn tại của một phần tử
//==================lý thuyết phần 1===========
/*
void main() {
// Tạo một Set chứa các số nguyên duy nhất(1)
  Set<int> numberSet = {1, 2, 3, 4, 5, 5, 4, 3, 2, 1};

// In ra các phần tử trong Set
  print(numberSet); // Output: {1, 2, 3, 4, 5}

// Kiểm tra sự tồn tại của một phần tử trong Set
  print(numberSet.contains(3)); // Output: true

// Thực hiện các phép toán tập hợp
  Set<int> a = {1, 2, 3};
  Set<int> b = {2, 3, 4};
  print(a.union(b)); // Output: {1, 2, 3, 4}
  print(a.intersection(b)); // Output: {2, 3}
}
*/
// ========= lý thuyết phần 2
var number = <int>{}; // khai báo kiểu "set":  <kiểu dữ liệu> tenDoiTuong = <kiểu dữ liệu> {values}
var number2 = <int>{1, 2, 3};
Set<int> number3 = {4, 5, 6};
Set<String> name = {'tin', 'hoa', 'phuong'};
Set<dynamic> test = {1, 'tin', 1.5};
// set chỉ chứa các phần tử không trùng nhau
void main() {
  // kiểm tra kích thước
  print(number.length);
  print(number2.length);
  print("=============");
  // Duyệt các phần tử
  number2.forEach((name) {
    print(name);
  });
  print('=============');
  name.forEach((test) {
    print(test);
  });
  print('=============');
  test.forEach((i) {
    print(i.runtimeType); // runtimeType: chạy cả kiểu dữ liệu
    print(i);
  });
  print('======================');

  // thêm phẩn tử vào trong set
  number.add(8);
  number.add(9);
  print(number.length);
  print("==");
  number.forEach((number) {
    print(number);
  });
}

