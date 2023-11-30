import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/ListView/list_view2.dart';
import 'package:flutter_new/ListView/listview1.dart';
import 'package:flutter_new/Statefull/homepage.dart';
import 'package:flutter_new/Music%20App/playlists.dart';
void main(){
  runApp(MaterialApp(home: Music_app(),
  debugShowCheckedModeBanner: false,));
}
class Music_app extends StatefulWidget{
  @override
  State<Music_app> createState() => _Music_appState();
}

class _Music_appState extends State<Music_app> {
  int index=0;
  var screens=[playlist(),playlist(),playlist(),playlist()];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(onTap: (tapindex){
        setState(() {
          index=tapindex;
        });
      },
          currentIndex: index,
          selectedItemColor: Color.fromRGBO(251, 174, 193, 1.0),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "-",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "-"),
            BottomNavigationBarItem(icon: Icon(Icons.playlist_add),label: "-",tooltip: "Playlists"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: "-"),
          ]),
      body: screens[index],
    );
  }
}