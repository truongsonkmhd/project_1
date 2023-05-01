import 'package:learn_flutter/studyDart/Mixins_class/person.dart';

mixin Music on Person {
  // mixin music <=> class music -note: class nào kế thừa Person mới gọi đc [ Music]
  void music1();
  void music() {
    print('music!');
  }
}
