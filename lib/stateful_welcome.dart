import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/New_app.dart';
import 'login_signup.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_new/home.dart';
import 'package:flutter_new/login.dart';

import 'package:google_fonts/google_fonts.dart';


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
class New extends StatelessWidget {
  String uname = "admin";
  String password = 'abc123';

  final custuser_controller = TextEditingController();
  final custpass1_controller = TextEditingController();
  final custpass2_controller = TextEditingController();

  String user = "";
  String pass= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: const Text("Sign Up"),
          // actions: const [
          //   Icon(Icons.camera),
          //   SizedBox(
          //     width: 10,
          //   ),
          //   Icon(Icons.search_rounded),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Sign Up",
                style:
                GoogleFonts.habibi(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                "Just a few quick things to get started",
                style:
                GoogleFonts.habibi(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28, top: 20),
                child: TextField(
                  controller: custuser_controller,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Email",
                      labelText: "Email"),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 28, bottom: 20),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: custpass1_controller,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Password",
                      labelText: "Password"),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 10, bottom: 15),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: custpass2_controller,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Confirm Password",
                      labelText: "Confirm Password"),
                ),
              ),
              MaterialButton(
                color: Colors.deepPurpleAccent,
                shape: const StadiumBorder(),
                height: 60,
                minWidth: 180,
                onPressed: () {
                  if (custpass1_controller == custpass2_controller) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => New()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Password don't match "),
                          backgroundColor: Colors.red,
                        ));
                  }


                  /// to clear text fields
                  // custuser_controller.text = "";
                  // custpass1_controller.text = "";
                  // custpass2_controller.text = "";
                },
                child: const Text("Create an account"),),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context)=> New()));
                  },
                  child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 20),
                          children: [
                            TextSpan(text: "Already have an account?"),
                            TextSpan(
                                text: '  Login!!!',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])))
            ],
          ),
        )
    );
  }
}
