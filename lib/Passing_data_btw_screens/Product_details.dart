import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Passing_data_btw_screens/dummy_data.dart';

class product_details extends StatelessWidget{
  @override
  Widget  build(BuildContext context){
    final id=ModalRoute.of(context)?.settings.arguments;
    final productnew=products.firstWhere((e)=> e["id"]==id);
    return Scaffold(
      appBar: AppBar(title: Text("Details"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(productnew["image"],height: 200,width: 200,),
              Text(productnew["name"]),
              Text(productnew["description"]),
              Text("${productnew["price"]}"),
            ],
          ),
        ),
      ),
    );
  }
}