import 'package:learn_flutter/studyDart/Mixins_class/football.dart';
import 'package:learn_flutter/studyDart/Mixins_class/music.dart';
import 'package:learn_flutter/studyDart/Mixins_class/person.dart';
import 'package:learn_flutter/studyDart/Mixins_class/readbook.dart';

class User extends Person with Football, ReadBook, Music {
  // "extends Person"
  int id = 0;
  String name = '';

  User(this.id, this.name);
  void logFavorite() {
    logFootball();
    readBook();
    music();
  }

  @override
  void play() {
    print('override play');
  }

  @override
  void music1() {
    print("đà đà đa");
  }
}
