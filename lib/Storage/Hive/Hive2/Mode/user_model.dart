import 'package:hive_flutter/adapters.dart';
part 'user_model.g.dart';///automatically generated part
@HiveType(typeId: 0)
class User{
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  @HiveField(2)
  String?id;
  @HiveField(3)
  String?age;
  @HiveField(4)
  String?name;

  User({required this.email, required this.password,this.name,this.age,this.id})
  {
    id=DateTime.now().microsecondsSinceEpoch.toString();
  }
}