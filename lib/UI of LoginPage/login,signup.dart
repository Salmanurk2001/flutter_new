import 'package:flutter/material.dart';
import 'package:flutter_new/Statefull2/Reg_page.dart';
import 'package:flutter_new/Statefull/login.dart';
import 'package:flutter_new/Statefull2/stateful_Login.dart';
import 'package:flutter_new/Statefull2/Reg_page.dart';
import 'package:flutter_new/UI%20of%20LoginPage/SignUp_page.dart';
import 'package:flutter_new/UI%20of%20LoginPage/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login1_SignUp(),
  ));
}
class Login1_SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello There !",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 35),),
            Text("Automatically identify verification which \n  enable you to verify your identity"),
            const Image(image:AssetImage("assets/Images/WhatsApp Image 2023-11-24 at 19.24.03_046e8dc5.jpg"),
              width: 250,
              height: 250,),
            MaterialButton(
              elevation: 50,
              height: 60,
              minWidth: 450,
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_1()));
              },
              color: Color(0xFF0D47A1),
              child: const Text('Login'),
            ),
            MaterialButton(
              elevation: 50,
              height: 60,
              minWidth: 450,
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Sign_Up()));
              },
              color: Color(0xFFD32F2F),
              child: const Text('Sign Up'),
            ),
            const SizedBox(
              height: 60,
              width: 450,
            ),
          ],
        ),
      ),
    );
  }
}
