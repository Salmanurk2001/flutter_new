import 'dart:ffi';

import 'package:flutter_new/Storage/Hive/Hive2/Mode/user_model.dart';
import 'package:hive/hive.dart';

class HiveDb{
///singleton class
  HiveDb._internal();/// "_"is private named constructor
  static HiveDb instance=HiveDb._internal();
  factory HiveDb(){
    return instance;
  }

 Future<List<User>> getUser() async{
    final db=await Hive.openBox<User>("userData");
    return db.values.toList();
 }

 Future<void> addUser(User newuser) async{
   final db=await Hive.openBox<User>("userData");
   db.put(newuser.id,newuser);
 }
}