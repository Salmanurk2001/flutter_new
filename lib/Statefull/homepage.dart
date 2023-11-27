import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_new/Statefull/login.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: home(),debugShowCheckedModeBanner: false,));
}
class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>Login_Page()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset("assets/Animation/Animation - 1698770246228.json"),
      ),
    );
  }
}