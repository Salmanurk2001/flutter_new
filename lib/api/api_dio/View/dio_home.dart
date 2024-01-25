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
      body: Obx(() =>
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: controller.isInternetConncted.value
                  ? (controller.isloading.value ? showAnimation() : getData())
                  : noInternet(context))),
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

  RefreshIndicator getData()
  return RefreshIndicator(child: ScrollablePositionedList.builder(
  itemCount: controller.postList.length,
  itemBuilder: (context, index) => InkWell(onTap:()=>Get.to(DetailsDio()),
  child: Card(child: ListTile(),),)),


  onRefresh: (onRefresh));
}

noInternet(BuildContext context) {}
}