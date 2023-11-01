import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HELLO THERE !!!",
              style: GoogleFonts.gabriela(
                  fontWeight: FontWeight.bold,
                  fontSize: 35),),
            const Image(image: AssetImage("assets/icons/Eleph.png"),
              width: 180,
              height: 200,),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Login'),
            ),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {},
              color: Colors.purple,
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
