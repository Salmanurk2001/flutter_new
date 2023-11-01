import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        actions: [
          Icon(Icons.camera),
          Icon(Icons.search_rounded),
        ],
      ),
      body: Column(
        children: [
          Text(
        "Login Page",style: GoogleFonts.fahkwang(fontSize: 20),
      ),
          Padding(
            padding: const EdgeInsets.only(left:28.0,right:28,top:10),
          child:TextField(
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
                hintText:"UserName",
              labelText: "UserName",
            ),
          ),
         ),
      Padding(
        padding: const EdgeInsets.only(left:28.0,right:28,top:10),
          child:TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText:"Password",
              labelText: "Password"
            ),
          ),
      ),
          ElevatedButton(onPressed: (){}, child: const Text("Login Here"))
        ],
      ),
    );
  }
}
