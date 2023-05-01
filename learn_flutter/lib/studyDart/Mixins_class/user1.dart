import 'package:learn_flutter/studyDart/Mixins_class/music.dart';
import 'package:learn_flutter/studyDart/Mixins_class/person.dart';

class user1 extends Person with Music {
  @override
  void music1() {
    print('đà đà đa');
  }
}
