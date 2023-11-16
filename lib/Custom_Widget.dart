import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget{
  final Color? bgcolor;
  final Image? image;
  Widget? label;
  VoidCallback? onpressed;
  MyWidget({required this.label,this.image,this.bgcolor,this.onpressed});

  @override
  Widget build(BuildContext context){
    // return ListTile(
    //   leading: image,
    //   title: label,
    //   tileColor: bgcolor,
    //   onTap:onpressed,
    // );
    return Card(
      color: bgcolor,
      child: Column(
        children: [
          Container(
            child: image,
          ),
          ElevatedButton(onPressed: onpressed, child: label)
        ],
      ),
    );
  }
}