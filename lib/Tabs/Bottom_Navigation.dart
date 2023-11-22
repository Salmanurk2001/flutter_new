import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/ListView/list_view2.dart';
import 'package:flutter_new/ListView/listview.dart';
import 'package:flutter_new/ListView/listview1.dart';
void main(){
  runApp(MaterialApp(home: Botton_Navigation(),
    debugShowCheckedModeBanner: false,));
}
class Botton_Navigation extends StatefulWidget{
  @override
  State<Botton_Navigation> createState() => _Botton_NavigationState();
}

class _Botton_NavigationState extends State<Botton_Navigation> {
  int index=0;
  var screens=[List_generate(),ListView2(),ListView_custom()];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(onTap: (tapindex){
        setState(() {
          index=tapindex;
        });
      },
          currentIndex: index,
          selectedItemColor: Colors.red,
          items: [BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
          ]),
      body: screens[index],
    );
  }
}