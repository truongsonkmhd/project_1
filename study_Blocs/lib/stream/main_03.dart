/*
Stream<int> countStream(int value) async*{ // "async* - sử dụng cho Stream" và nó kết hợp với yield - để trả về được nhiều giá trị
  for(int i = 0; i<=value; i++){
    yield i;
  }
}
main() async{ // async: hàm bất đồng bộ

// -Hàm countStream tạo ra một stream các số nguyên từ 1 đến n, với n là tham số truyền vào của hàm.
// -Sau đó, hàm listen được gọi trên stream vừa tạo để lắng nghe (listen) và xử lý các sự kiện (events) được phát ra từ stream đó.
// -Mỗi khi stream phát ra một giá trị, hàm print được gọi để in giá trị đó ra màn hình dưới dạng chuỗi (bằng cách sử dụng phương thức toString()).


print('begin');
// cách 1: listen: nó sẽ không chờ thằng thứ 2 xong nó se in ra luôn begin và end
// countStream(10).listen((event) {
//   print(event.toString());
// });
  //cách 2: nó sẽ in ra lần lượt các gtri
 await for(int value in countStream(10)){
    print(value.toString());
  }
print('end');
}
*/
/*
//===============vi_du_2================
Stream<int> countStream(int value) async* {
  for (int i = 0; i <= value; i++) {
    yield i;
  }
}
  Future<int> sumStream(Stream<int> stream) async {
    int sum = 0;
    await for (int value in stream) {
      sum += value;
    }
    return sum;
  }

main() async{
  print(await sumStream(countStream(10)));
}
/*
-Từ khóa await được sử dụng trong Dart để đợi cho một thao tác bất đồng bộ hoàn thành trước khi tiếp tục thực hiện các lệnh tiếp theo
-Khi một hàm được đánh dấu bằng từ khóa 'async', nó sẽ trả về một Future. Khi chúng ta muốn sử dụng kết quả của
Future đó, chúng ta sẽ sử dụng từ khóa 'await' để đợi đến khi kết quả của Future được trả về. Với việc sử dụng await,
chương trình sẽ tạm dừng tại đó và chờ đợi kết quả trả về trước khi tiếp tục thực hiện các lệnh tiếp theo.
*/
*/
//=============vi_du_3=============
main() async {
  Stream<int> streamPeriodic = Stream.periodic(Duration(seconds: 2),(value){
    return value;
  }).asBroadcastStream();
  //.asBroadcastStream(): có thể in được nhiều lần, còn nếu ko có chỉ cái đó chỉ in được đúng 1 lần

  streamPeriodic.listen((event) {
    print(event.toString());
  });
  streamPeriodic.listen((event) {
    print(event.toString());
  });
}