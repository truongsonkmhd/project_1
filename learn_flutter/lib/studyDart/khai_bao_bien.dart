// Bài 1: Khai báo biến trong flutter
main(){
  //======Phải gán giá trị========
  /*
  // kiểu số nguyên
  int a = 5;
  print(a.runtimeType);

  // kiểu chuỗi
  String name = 'Phuong';
  print(name*2);

  double d=1.6;
  print(d);
  dynamic c; // nhận mọi kiểu (gtri = null), người đọc mã sẽ khó hiểu và dùngg
  // “nó rất tốn dữ liệu nên không hay dùng”
  print(c);
  c = 5;
  print(c);
  c=" BA BA BA ";
  print(c);

  c= 3.14159265;
  print(c);

//=== dynamic a, int a=4 , int b = “sơn”;=>  (đúng vì nó sẽ tự động gán gtri  luôn nên rất tốn dữ liệu, hạn chế dùng)                           khác void a = 4, b=5, <b = “test”> -> lỗi (vì void khi dugnf nó nó sẽ là kiểu dữ liệu của cái gtri gán luôn.

-Trong Dart, ‘enum’ là một kiểu dữ liệu đặc biệt được sử dụng để định nghĩa một tập hợp các hằng số liển quan đến một chủ để cụ thể.(khác mảng ở chỗ, mảng phần tử nào cũng được)
Ví dụ code
enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}
*/





//========= Không phải gán gtri===========
/*
 int? a;
print(a); // kiểu dữ liệu có thể chứa gtri số nguyên hoặc gtri 'Null'
print(a.runtimeType);// để hiện gtri của biến 'a'. Khi chưa có gtri đc gán cho biến 'a', gtri của nó là 'Null'
a = 5;
print(a);*/
/*Vì biến a có kiểu dữ liệu là int?,
 *  nó có thể chứa giá trị số nguyên hoặc
 *  giá trị null. Khi chưa có giá trị được
 *  gán cho biến a, giá trị của nó là null.
 *  Khi một giá trị số nguyên được gán cho
 * biến a, giá trị của nó sẽ là giá trị số
 * nguyên đó.*/

  var b;
  print(b); // b có kiểu là null và có gtri là null
  print(b.runtimeType);
  b = 5;
  print(b.runtimeType);
  b ='Phuong';
  print(b.runtimeType);

  var c = 5; // dart tự xác định kiểu dữ liệu là mình gán qua dấu "="
  print(c.runtimeType);
}
/* Kiểu dữ liệu trong dart
 -Kiểu số 'num' gồm có hai kiểu con là kiểu sô nguyên
 int, số thực double
 -Kiểu xâu(kiểu chuỗi) 'String'
 -Kiểu logic 'bool'
 -Kiểu 'null'
 -Kiểu danh sách 'List' tương ứng như kiểu mảng arrays
 trong các ngôn ngữ khác
 -Kiểu tập hợp set
 -Kiểu 'map' tương tự kiểu từ điển dict như trong Python

 */



// Bài 2. Các toán tử trong dart
/*
// các toán tử số học
void main(){
//   print(5+3);
//   print(5/6);
//   print(8~/3); //div(không lấy phần sau dấu phẩy)- hay còn gọi là lấy sấp xỉ
//   print(9%2); // mode
//   int i = 5;
//   i--;
//   print(i);

//   bool a = true;
//   bool b = false;
//   print(a|b); // phép toán 'or'
//   print(a&b);// phép toán 'end'
//   print(!a);// phép toán'not'
  var a = 1;
  var b = 2;
  print("toán tử so sánh");
  print(a<b ? a:b); // kết quả trả về 2
  print("mảng:");
  List temp =  [1,12,31];
  print(temp[1]);
}
*/


// Bài 3: if else, for, while
/*
void main(){
//   int n = 10;
//   if(n%2 == 0){
//     print('$n là số chẵn');
//   }else print('$n là số lẻ');
//   print('$n^2 bằng ${n*n}');
//   // $ là để lấy giá trị
// // toán tử 3 ngôi
// //(điều kiện) ? (Lệnh thực thi khi dk đúng):(khi đk sai);
// ( n % 2 == 0) ? print('$n là số chẵn'):print('$n là số lẻ');

  for (var i = 0; i<=10; i++){
    print('$i^2 = ${i*i}');
  }
}
*/