//===============Luyện tập string====================
/*
  print("Dùng dấu tab!!");
  String dautab = '''   Nice to
        Meet you       ''';
        print(dautab);
  
  print("Lấy kí tự!!");
  String Test1 = "Sơn đẹp zai!!";
  print(Test1[0]);

  print("Lấy kí tự trong khoảng!!");
  print(Test1.substring(2,5));

  print("Tính độ dài chuỗi!!!");
  print(Test1.length); // tính cả khoảng trắng
*/
void main(){
  // cộng chuỗi
  String test2 = "Nguyễn ";
  String test3 = "Văn ";
  String test4 = "Kim";
  //các cách công chuỗi với nhau
  //cách1
  String newString  = test2 + test3 + test4;
  print(newString);
  //cách2
  String fullName = '$test2 $test3 $test4';
  print(fullName);


// kiểm tra 1 chuỗi có rỗng hay không
  if(fullName.isEmpty){ // empty: rỗng
    print("string này có bị rỗng");
  }else{
    print("string này không bị rỗng");
  }
  bool checkListEmpty = newString.isNotEmpty & fullName.isNotEmpty; // .isNotEmpty: không phải chuỗi rỗng
  print(checkListEmpty);
}





  // String newString2 = 'hello ' "sơn " 'lai ';
  // print(newString2);
  //
  // String newString3 = test2*4;
  // print(newString3);
  //
  // // hàm trim(): xoá khoảng trắng đầu câu và cuối câu
  // print(dautab);
  // String newString4 = dautab.trim();
  // print(newString4);
  //
  // // hàm split(): chia các chuỗi thành chuỗi con
  // print("trước: ");
  // print(Test1);
  // print("sau: ");
  // List strings = Test1.split(' ');
  // print(strings);
  //
