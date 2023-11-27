import 'package:flutter/material.dart';
import 'package:flutter_new/Statefull/homepage.dart';
import 'package:flutter_new/UI%20of%20LoginPage/login,signup.dart';
import 'package:flutter_new/UI%20of%20LoginPage/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Sign_Up(),));
}
class Sign_Up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text("Sign up"),
      ),
      body: Column(
        children: [
          Text(
            "Sign Up",
            style:
            GoogleFonts.roboto(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text("Create an Account,its free"),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28, top: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero),
                  hintText: "Email",
                  labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 28.0, right: 28, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 28.0, right: 28, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero),
                  hintText: "Confirm Password",
                  labelText: "Confirm Password"),
            ),
          ),
          MaterialButton(
              shape: const StadiumBorder(),
            height: 60,
              minWidth: 450,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login1_SignUp()));
              },
              color: Color(0xFFD32F2F),
              child: const Text("Sign Up")),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login_1()));
              },
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: [
                        TextSpan(text: "Already have an Account?",style: TextStyle(fontSize: 15)),
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])
              )
          ),
        ],
      ),

    );
  }
}
