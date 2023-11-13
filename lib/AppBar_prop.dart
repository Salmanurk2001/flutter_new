import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:AppBar_prop(),
    debugShowCheckedModeBanner: false,));
}
class AppBar_prop extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: const Text("My Appbar"),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.camera_alt_outlined),
        SizedBox(width: 15,),
        Icon(Icons.search),
        PopupMenuButton(itemBuilder: (context){
          return[
           const PopupMenuItem(child: Text("New Group")),
            const PopupMenuItem(child: Text("New BroadCast")),
            const PopupMenuItem(child: Text("Settings")),
            const PopupMenuItem(child: Text("Profile")),
          ];
        })
      ],
    ),
  );

}
}


