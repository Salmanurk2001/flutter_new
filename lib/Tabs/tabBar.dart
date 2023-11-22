import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/GridView/gridview1.dart';
import 'package:flutter_new/ListView/listview.dart';
void main(){
  runApp(MaterialApp(home: TabBAr_Examp(),
    debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch:Colors.green),));
}
class TabBAr_Examp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 4,
      child: Scaffold(
      appBar: AppBar(
        title: Text("TabBAr"),
        bottom: TabBar(tabs: [
          Text("Community",style: TextStyle(fontSize: 12.8 ),),
          Text("Chat"),
          Text("Updates"),
          Text("Call")
        ]),
      ),
        body: TabBarView(children: [
          List_generate(),
        Center(
          child: const Text("chat"),),
          Icon(Icons.update),
          Gridview_1()
        ])
      )
    );
  }
}