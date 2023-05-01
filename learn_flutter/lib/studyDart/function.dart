int add(int a, int b){
  return a+b;
}
double multiply({double x = 0, double y = 0}){
  print('x=$x, y=$y');
  return x*y;
}
sayHello([String name = 'world']){
  print("Hello $name");
}
String getDateTimeString({int? day, int? month, int? year}){ // hỏi chấm là 1 là
                                        // 1 là trả về null nếu ta không nhập gtri 2 là trả về ggr
  // trả về gtri nếu ta nhập
  String stringDay = (day ?? 0) < 10 ? '0$day' : '$day';
  /*toán tử tam phân (ternary operator) để kiểm tra xem biến day có giá trị null
   hay không. Nếu day là null thì sẽ gán giá trị 0 cho biến stringDay. Nếu day có
    giá trị khác null, thì sẽ kiểm tra nếu day nhỏ hơn 10 thì sẽ thêm số 0 vào
     đầu chuỗi day và gán kết quả cho biến stringDay*/
  String stringMonth = (month ?? 0) <10 ? '0$month' : '$month';
  return '$stringDay/$stringMonth/$year';
}
// hơi khó hiểu
void doSomeTasks({int param1 = 0, int param2 = 0, Function? completion}){
  print('Do sơmthing');
  completion!('This id a result'); // ! để khẳng định completion khác NULL nếu null
  // thì chương trình bị lỗi và dừng thực thi
}
void main(){
  print('2 add 3 is ${add(2,3)}');


  print('4 multiply 5 is ${multiply(x:4,y:5)}');


  print('${multiply(x:9)}'); // mặc định gtri y của nó bằng 0


  sayHello('Hoang');


  sayHello();// nó sẽ lấy gtri mặc định là 'world'


  print('ngày tháng năm is:${getDateTimeString(day: 3,month: 3)}');


  doSomeTasks(param1: 1, param2: 3,completion: (String result){
    print('The result is: $result');
  });

}