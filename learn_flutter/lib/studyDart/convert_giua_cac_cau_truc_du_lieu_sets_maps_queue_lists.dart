/*
import 'dart:collection';

var numbers = {1, 2, 3};
List<int> list1 = [4, 5, 6];
List<String> list2 = ['tin', 'hoa', 'phuong'];
void main() {
  //========== chuyển từ "list" sang "string"==========
  //1. Duyệt từng phần tử rồi add tương ứng
  Set<String> set1 = {};
  list1.forEach((number) {
    set1.add('$number');
  });
  print(set1.length);
  set1.forEach((number) {
    print(number.runtimeType);
    print(number);
  });
  //2.add all phan tu
  Set<String> Set2 = {};
  Set2.addAll(list2);
  //3. .from();
  Set<dynamic> set3 = Set.from(numbers);
  set3.forEach((x) {
    print(x);
  });
  //==========chuyển từ "list" sang " queue"==========
  var q = Queue.from(numbers);
  q.forEach((x) {
    print(x);
  });
  //4 .map()
  List<String> strNumbers = numbers.map((number) {
    return '$number';
  }).toList();
  strNumbers.forEach((i) {
    print(i.runtimeType);
    print(i);
  });
  Set<String> set4 = list1.map((number) {
    return '$number';
  }).toSet(); // chuyển từ ,map sang set
} */

void main() {
  //=======Chuyển từ list sang set======
  List<String> list = ['apple', 'banana', 'orange'];
  Set<String> set = list.toSet(); // Chuyển đổi List sang Set
  print(set); // In ra: {apple, banana, orange}
  //======= chuyển từ Set sang list =========
  /*
Set<String> set = {'apple', 'banana', 'orange'};
List<String> list = set.toList(); // Chuyển đổi Set sang List
print(list); // In ra: [apple, banana, orange]
 */
  //====== chuyển đổi từ list sang  queue
/* List<String> list = ['apple', 'banana', 'orange'];
Queue<String> queue = Queue();
queue.addAll(list); // Thêm các phần tử của List vào Queue
print(queue); // In ra: (apple, banana, orange)
*/
  // chuyển đổi từ Queue sang List
/*Queue<String> queue = Queue();
queue.addAll(['apple', 'banana', 'orange']); // Thêm các phần tử vào Queue
List<String> list = queue.toList(); // Chuyển đổi Queue sang List
print(list); // In ra: [apple, banana, orange]
 */
// chuyển đổi  list sang map:
/* List<String> list = ['apple', 'banana', 'orange'];
Map<int, String> map = list.asMap(); // Chuyển đổi List sang Map
print(map); // In ra: {0: apple, 1: banana, 2: orange}
*/
// chuyển đổi từ Map sang list
/*Map<int, String> map = {0: 'apple', 1: 'banana', 2: 'orange'};
List<String> list = map.values.toList(); // Chuyển đổi các giá trị của Map sang List
print(list); // In ra: [apple, banana, orange]
 */
// chuyển đổi từ set map tương tự
}
