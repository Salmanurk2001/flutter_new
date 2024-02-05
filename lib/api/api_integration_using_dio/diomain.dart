import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/api/api_integration_using_dio/View/datahome.dart';
import 'package:get/get.dart';
void main(){
  runApp(DioMain());
}
class DioMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: DataHomeDio(),
    );
  }
}