import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void  main(){
  runApp(MaterialApp(home: BottomSheet(),debugShowCheckedModeBanner: false,));
}
class BottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet (context);
          },
          child: Image.asset("assets/Images/neom-0SUho_B0nus-unsplash.jpg"  ,)
        ),
      )
    );
  }
  void showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        children: [
          ListTile(leading: Icon(Icons.share),title: Text('Share') ,),
          ListTile(leading: Icon(Icons.copy),title: Text("Copy"),)
        ],
      );
    }
    );
  }
}