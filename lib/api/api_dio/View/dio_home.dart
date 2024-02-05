import 'package:flutter/material.dart';
import 'package:flutter_new/api/api_dio/Controller/post_controller.dart';
import 'package:flutter_new/api/api_dio/Utils/color_constant.dart';
import 'package:flutter_new/api/api_dio/View/dio_details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DioHome extends StatelessWidget {
  PostController controller = Get.put(PostController());

  var onRefresh;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      floatingActionButton: Obx(
              () =>
          controller.isInternetConncted.value
              ? buildFAB()
              : Container()),
      body: Obx(() => SizedBox(
        height:double.infinity,
        width: double.infinity,
        child: controller.isInternetConncted.value?
        (controller.isloading.value?const Center(
            child: CircularProgressIndicator())
            :getData())
            :const Center(child: Text("No Internet",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),),
      )),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListScrolldown.value
            ? controller.scrollUp()
            : controller.scrollDown();
      },
      backgroundColor: MyColors.facolor,
      child: FaIcon(controller.isListScrolldown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }

  Center showAnimation() {
    return Center(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Lottie.asset("assets/images/load.json"),
      ),
    );
  }
  RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(
            itemScrollController: controller.itemController,
            itemCount: controller.postList.length, itemBuilder:(context,index){
          return InkWell(child: Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(controller.postList[index].id.toString()),
              ),
              title: Text("${controller.postList[index].title}"),
              subtitle: Text("${controller.postList[index].body}"),
            ),
          ),);
        }),
        onRefresh: (onRefresh));
  }
}
//   RefreshIndicator getData()
//   return RefreshIndicator(
//   child: ScrollablePositionedList.builder(
//   itemScrollController: controller.itemController,
//   itemCount: controller.postList.length,itemBuilder: (context, index) {
//     return InkWell(onTap:()=>Get.to
//   }(DetailsDio()),
//   child: Card(child: ListTile(),),)),
//
//
//   onRefresh: (onRefresh));
// }
