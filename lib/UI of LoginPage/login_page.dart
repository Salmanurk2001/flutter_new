import 'package:flutter/material.dart';
import 'package:flutter_new/Statefull/homepage.dart';
import 'package:flutter_new/Statefull/login.dart';
import 'package:flutter_new/Statefull/Registration.dart';
import 'package:flutter_new/UI%20of%20LoginPage/SignUp_page.dart';
import 'package:flutter_new/UI%20of%20LoginPage/login,signup.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Login_1(),
    debugShowCheckedModeBanner:false ,));
}
class Login_1 extends StatelessWidget {
  String email = "abc@gmail.com";
  String password = 'admin123';

  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

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
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          Text(
            "Login",
            style:
            GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text("Welcome back ! Login with your credentials"),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28, top: 20),
            child: TextField(
              controller: email_controller,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 28.0, right: 28, top: 10, bottom: 15),
            child: TextField(
              obscureText: true,
              controller: pass_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          MaterialButton(
              color: Color(0xFF0D47A1),
              shape: const StadiumBorder(),
              height: 60,
              minWidth: 450,
              onPressed: () {
                if (email == email_controller.text &&
                    password == pass_controller.text) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login1_SignUp()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid Email or Password'),
                        backgroundColor: Colors.red,
                      ));
                }
                /// to clear text fields
                email_controller.text = "";
                pass_controller.text = "";
              },
              child: const Text("Login"),),
          const SizedBox(
            height: 60,
            width: 450,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sign_Up()));
              },
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: [
                        TextSpan(text: "Don't Have an Account?",style: TextStyle(fontSize: 15)),
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])
              )
          )
        ],
      ),
    );
  }
}
