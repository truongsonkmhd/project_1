//================Queue: hàng đợi =============
//Công dụng
/*
1.Quản lý hàng đợi yêu cầu: Queue được sử dụng để quản lý hàng
đợi các yêu cầu tới server. Server sẽ xử lý yêu cầu theo thứ tự mà
chúng được thêm vào trong Queue, giúp đảm bảo tính công bằng và tránh tình trạng quá tải.
2.Tác vụ xử lý đồng thời: Queue được sử dụng để quản lý các tác vụ xử
lý đồng thời. Các tác vụ sẽ được thêm vào trong Queue và được thực thi
theo thứ tự mà chúng được thêm vào. Điều này giúp đảm bảo tính hiệu quả và tránh tình trạng tràn bộ nhớ.
3.Lưu trữ các sự kiện: Queue được sử dụng để lưu trữ các sự kiện trong ứng dụng.
Ví dụ: trong ứng dụng âm nhạc, các bài hát sẽ được thêm vào trong Queue và phát theo thứ tự mà chúng
được thêm vào.
4.Xử lý tác vụ hàng đợi: Queue được sử dụng để xử lý các tác vụ hàng đợi,
ví dụ như các tác vụ đang chờ được thực hiện. Khi một tác vụ đã được thực hiện xong,
tác vụ tiếp theo trong hàng đợi sẽ được thực hiện.
5.Hệ thống giải quyết truy vấn đồng thời: Queue được sử dụng trong các hệ thống giải
quyết truy vấn đồng thời, nơi nhiều người dùng cùng truy cập vào cùng một tài nguyên đồng thời.
Các yêu cầu truy vấn sẽ được thêm vào trong Queue và được xử lý theo thứ tự mà chúng được thêm vào. */
//======= cách khai báo=======
import 'dart:collection';

var q = Queue();
var test = {'X', 'Y', 'Z'};
Queue<dynamic> check = Queue();
void main() {
  print(q.length);
  print("================");
  // add thêm phần tử
  q.add('A');
  q.add('B');
  print(q.length);
  print("================");
  q.addFirst("C");
  q.addLast("D");
  q.addAll(test);
  // Duyệt các phần tử
  q.forEach((x) {
    print(x);
  });
  print("================");
  print(q.length);
  // xoá 1 ptu trong "queue"
  q.remove('Y');
  q.removeFirst(); // chú ý cái này
  q.removeLast(); // chú ý cái này
  // xoá all ptu trong "queue"
  //q.clear();

  // kiểu <dynamic>
  check.addAll(test);
  check.add(2.5);
  check.add('son');
  check.add(3);
  print("===================");
  check.forEach((x) {
    print(x);
    print(x.runtimeType);
  });
  //in ra phần tử trong QUEUE
  print("===================");
  print(check.elementAt(3)); // elementAt(index)-> phần tử thứ....
  print(check.first);
  print(check.last);
  print(check
      .isEmpty); // check xem trong Queue có trống hay không trả về true false
  print(check.isNotEmpty);
}
