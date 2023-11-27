import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_new/Statefull2/login_signup.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_new/Statefull/login.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login_SignUp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A148C),
      body: Center(
        child: Lottie.asset("assets/Animation/Animation - 1700664531803.json", height: 800),
        //   child: Lottie.network("https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json"),
      ),
    );
  }
}
