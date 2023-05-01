//============ khai báo mảng trong dart============
void main() {
  /*
  List<String> names = ['James', 'John','Marry'];
  // thêm một phần tử vào mảng:
  print("-Thêm một phần tử vào mảng!!");
  names.add('sonheomin');
  print(names);

  // thêm nhiều phần tử vào mảng
  print("-Thêm nhiều phẩn tử vào mảng!!");
  names.addAll(['max','min','normal']);
  print(names);


  List<int> number = [5,6,7,3];
  // thêm 1 phần tử vào mảng vị trí bật kì
  print("-Thêm 1 phầN tử vào mảng vtri bất kì!!");
  names.insert(1, "obama");
  print(names);

  // Thêm nhiều phầN tử vào mảng vtri bất kì
  print("-Thêm nhiều phầN tử vào mảng vtri bất kì!!");
  names.insertAll(1, ['Thân', 'Hoàng', 'Dương']);           //tên.insertAll(vị trí, mảng cần nhập )
  print(names);

  // xoá gtri của 1 phần tử trong mảng
  print("Xoá gtri của 1 phần tử trong mảng!");
  names.remove('James');
  print(names);

  // xoá vị trí của 1 phần tử trong mảng
  print("xoá vị trí của 1 phần tử trong mảng");
  names.removeAt(1);        // tên.removeAt(vị trí);
  print(names);

  // xoá ptu cuối cùng:
  print(" xoá ptu cuối cùng:");
  names.removeLast();
  print(names);

  // Xoá phần tử ở mảng theo "Khoảng"
  print("List before remove: $names");
  names.removeRange(1, 3); // xoá vtri 1 và 2
  print("List after remove: $names");


  // Xoá tất cả các phần tử trong mảng
  print("xoá các phần tử trong mảng");
  names.clear();
  print(names);

  // thay đổi phần tử mảng
  names.insertAll(1,['Max', 'Nick' ,'Janna']);
  print('List before replace: $names '); // replace/ro pleis/: thay thế
  names.replaceRange(1, 3, ['petter', 'kate']);
  print('list after replace: $names');
  */
// final :  chỉ được gán một lần không được gán lần 2 nữa ví dụ:
  final List<String> carBrands = [
    'a', 'b', 'c'
  ];
  // carBrands = ['Toyota', 'Honda']; // báo lỗi ngay tại vì biến final chỉ được gán
  // một lần nếu xoá final đi được dùng thoải mái
  //==== nhưng nếu gán một phần tử thì vẫn được
  carBrands[0] = 'Toyota';
  print(carBrands);
  print("there are ${carBrands.length} brand names");
  //=========== nếu sử dung 'const List<String> carBrands' nó sẽ không thay đổi được gì luôn
// các cách duyệt mảng:
// cách 1: dùng for bình thường
  for (var i = 0; i < carBrands.length; i++) {
    // String carBrand = carBrands[i];
    // print(carBrand);
    print(carBrands[i]);
  }
  print('Iterate using forEach'); //lặp lại bằng cách sử dụng forEach

  carBrands.forEach((carBrand) {
    print(carBrand);
  });


  print('Iterate using for....in');
  for (var carBrand in carBrands) {
    print(carBrands);
  }


  // ====== nhân bản một mảng:<< nó sẽ khác địa chỉ>>===================
  List<String> clonedCarBrands = [...carBrands];
  clonedCarBrands[0]= 'honda'; // để test xem cái nhân bản nó ở địa chỉ khác
  print('carbrands = $carBrands');
  print('carbrands = $clonedCarBrands');
  print("after sort ascending"); // acending: tăng dần
  clonedCarBrands.sort((a,b) => a.compareTo(b));
  print('sort cloneBrands = $clonedCarBrands');
  print("================================");
  print("after sort decrease"); //decrease: giảm dần
  clonedCarBrands.sort((a,b) => b.compareTo(a));
  print('sort cloneBrands = $clonedCarBrands');


}