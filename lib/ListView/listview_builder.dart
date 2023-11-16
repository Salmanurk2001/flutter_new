import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_builder(),
  debugShowCheckedModeBanner: false));

}
class ListView_builder extends StatelessWidget{


  @override
  Widget  build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Listview_Builder"),
    ),
    body: ListView.builder(itemCount:10000,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
     => Card(

       color: Colors.green,
       child: Text("Hello"),
     )
    ),
  );
  }
}