import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Passing_data_btw_screens/Product_details.dart';
import 'package:flutter_new/Passing_data_btw_screens/dummy_data.dart';
void main(){
  runApp(MaterialApp(home: product_list(),
  debugShowCheckedModeBanner: false,
  routes: {
    "details":(context)=>product_details()
  }

    ));
}
class product_list extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Product List"),),
      body: ListView(
        children: products.map((e) => ListTile(
          leading: Image.asset(e["image"]),
          title: Text(e["name"]),
          onTap: ()=>Navigator.pushNamed(context, "details",arguments: e["id"]),
        )).toList(),
      ),
    );
  }
}