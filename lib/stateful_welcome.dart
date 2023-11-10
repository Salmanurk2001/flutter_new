import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/New_app.dart';
import 'login_signup.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash2(),
  ));
}
class Splash2 extends StatefulWidget{
  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>New()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Lottie.asset("assets/animations/house.json"),
            // child: Lottie.network("https://lottie.host/43740cf7-9bd9-4636-a1be-f12b9a84f98a/BIPuG3tVwp.json")
          ),
        );
    }
}
