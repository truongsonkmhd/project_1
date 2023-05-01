Future<void> asyncFunc(){ //asyncFunc(): hàm bất đồng bộ là hàm khi gọi hàm thì cái return sau thì nếu xét thời gian nó vânx lên trc đc
  // hàm đồng bộ là hàm khi gọi hàm thì gọi hàm nào nó trả về hàm đấy
  return Future.delayed(const Duration(seconds: 2), (()=> print('Hello futture')));
}
main(){
  asyncFunc(); // gọi hàm bất đồng bộ
  // trong khi 1 thằng(Hello Future) đang đợi 2 giây thì thăng thứ 2(waiting) nó sẽ in ra trước => đấy là bất đồng bộ
}