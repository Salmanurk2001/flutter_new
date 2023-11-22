import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/ListView/list_view2.dart';
import 'package:flutter_new/ListView/listview.dart';
import 'package:flutter_new/ListView/listview1.dart';
void main(){
  runApp(MaterialApp(home: Bottom_Convex(),
    debugShowCheckedModeBanner: false,));
}
class Bottom_Convex extends StatefulWidget{
  @override
  State<Bottom_Convex> createState() => _Bottom_ConvexState();
}

class _Bottom_ConvexState extends State<Bottom_Convex> {
  int index=0;
  var screens=[List_generate(),ListView2(),ListView_custom()];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex AppBar"),),
      bottomNavigationBar:ConvexAppBar(
        onTap: (convexbar){
          setState(() {
            index=convexbar;
          });
        },
          items: [
        TabItem(icon: Icon(Icons.home)),
        TabItem(icon: Icon(Icons.search)),
        TabItem(icon: Icon(Icons.person)),
      ]) ,
      body: screens[index],
    );
  }
}