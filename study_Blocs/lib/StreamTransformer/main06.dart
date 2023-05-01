/* StreamTransformer: dùng để transform data trong stream thông qua phương thức ẩn
-Trong Flutter, StreamTransformer là một lớp được sử dụng để biến đổi dữ liệu của một stream sang một dạng dữ liệu khác.
 Nó cho phép bạn thực hiện một loạt các thao tác xử lý trên dữ liệu trong stream, bao gồm lọc, sắp xếp, biến đổi, chuyển
 đổi định dạng, thêm/xóa phần tử, và nhiều hơn nữa.
 */
import 'dart:async';

main() async {
  /*
  Stream streamIn = Stream.fromIterable(['1','2','3']);

  StreamTransformer stringToIntTranfor = StreamTransformer.fromHandlers(handleData: ((data,sink){
    sink.add(int.parse(data));
  }));
  Stream streamOut = streamIn.transform(stringToIntTranfor);

  streamOut.listen((event) {
    print(event.toString());// .toString vì bên trên nó  bị nhét trong  '' là kiểu String
  });

  // streamOut.listen((event) {
  //   print(event.runtimeType);
  // });
   */
  /*
  Stream streamIn = Stream.fromIterable([1,2,3]);

  StreamTransformer stringToIntTranfor = StreamTransformer.fromHandlers(handleData: ((data,sink){
    //=======ví dụ lấy ra gtri chẵn trogn stream
    // if(data % 2 ==0){
    //   sink.add(data);
    // }
    //======ví dụ kiểm tra dữ liệu API
    // if(data % 2 == 0){
    //   sink.addError('List have a odd');
    // }

  }));
  Stream streamOut = streamIn.transform(stringToIntTranfor);

  streamOut.listen((event) {
    print(event.toString());// .toString vì bên trên nó  bị nhét trong  '' là kiểu String
  });
}
*/

//========ví dụ tính tổng các gtri  trong stream
  var sum = 0;
  Stream streamIn = Stream.fromIterable([1, 2, 3]);

  StreamTransformer<int, int> stringToIntTranfor =
      StreamTransformer.fromHandlers(handleData: ((data, sink) {
    sum += data;
    sink.add(sum);
  }));
  Stream streamOut = streamIn.transform(stringToIntTranfor);
  // tính gtri tổng cuối
  streamOut.listen((event) {}, onDone: () {
    print('Sum = $sum');
  });
}
