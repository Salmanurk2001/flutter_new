import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/api/api_integration_using_dio/Controller/datacontroller.dart';
import 'package:flutter_new/api/api_integration_using_dio/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DataHomeDio extends StatelessWidget{
  DataController controller=Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Dio"),
      backgroundColor: MyColors.prColor,),
      backgroundColor: MyColors.bgColor,
      floatingActionButton: Obx(
              () => controller.isNetConnected.value?_buildFAB(): Container()),
      body: Obx(() => SizedBox(
        height:double.infinity,
        width: double.infinity,
      child: controller.isNetConnected.value?
      (controller.isLoading.value?const Center(
        child: CircularProgressIndicator())
          :getData())
          :const Center(child: Text("No Internet",
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),),
      )),
    );
  }
  FloatingActionButton _buildFAB(){
    return FloatingActionButton(onPressed: (){
      controller.isListdown.value?
          controller.scrollToUp():
          controller.scrollToDown();
    },backgroundColor: MyColors.prColor,
      child: FaIcon(controller.isListdown.value?
      FontAwesomeIcons.arrowUp19:
      FontAwesomeIcons.arrowDown19),
    );
  }

 RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(
          itemScrollController: controller.scrollController,
            itemCount: controller.datas.length, itemBuilder:(context,index){
            return InkWell(child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: MyColors.scColor,
                  child: Text(controller.datas[index].id.toString()),
                ),
                title: Text("${controller.datas[index].title}"),
                subtitle: Text("${controller.datas[index].body}"),
              ),
            ),);
        }),
        onRefresh: (){
      return controller.fetchData();
    });
 }
  }
