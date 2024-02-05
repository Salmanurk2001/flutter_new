import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_new/api/api_dio/Services/dio_services.dart';
import 'package:flutter_new/api/api_integration_using_dio/Model/datamodel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DataController extends GetxController{
  RxList<DataModel>datas=RxList();
  RxBool isLoading =true.obs;
  RxBool isListdown =false.obs;
  RxBool isNetConnected =true.obs;

  var url ='https://jsonplaceholder.typicode.com/posts';
  var scrollController = ItemScrollController();

  void isInterNetConnected() async{
    isNetConnected.value= await InternetConnectionChecker().hasConnection;
  }

  fetchData() async{
    isInterNetConnected();
    isLoading.value =true;
    var response = await DioService().getData(url);
    if (response.statusCode==200){
      response.data.forEach((data){
        datas.add(DataModel.fromJson(data));
      });
      isLoading.value=false;
    }
  }
  scrollToDown(){
    scrollController.scrollTo(
        index:datas.length,
        duration: const Duration(seconds: 4),
        curve: Curves.bounceIn);
    isListdown.value=true;
  }
  scrollToUp(){
    scrollController.scrollTo(
        index:0,
        duration: const Duration(seconds: 4),
        curve: Curves.linearToEaseOut);
    isListdown.value=false;
  }
  @override
  void onInit() {
    fetchData();
    isInterNetConnected();
    super.onInit();
  }
}