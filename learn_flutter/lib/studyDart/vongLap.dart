// for
// for in
// for each
// while
// do while

// break; continnue
List<int> numbers = [1, 2, 3, 4, 5];

void main() {
  //===== for =====
  // for (int i = 0; i < numbers.length; i++) {
  //   print(numbers[i]);
  // }
  //=====for...in....=====
  for (int number in numbers) {
    // number có thể lặp tuỲ ý
    if (number > 4) {
      //break; -> 1,2,3,4
      continue; //-> 1,2,3,4,6
    }
    print(number);
  }
  //========forEach========
  // numbers.forEach((number) {
  //   print(number);
  // });
}
