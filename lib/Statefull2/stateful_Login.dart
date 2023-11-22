import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_new/home.dart';

class Login_Stateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_StatefulState();
}

class Login_StatefulState extends State<Login_Stateful> {

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/Icons/Eleph.png"),
                height: 200,
                width: 200,
              ),
              TextFormField(
                validator: (username){
                  if(username!.isEmpty || !username.contains('@')){
                    return 'username is invalid!!!!!!';
                  }else{
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                validator: (password){
                  if(password!.isEmpty || password.length < 6){
                    return 'Password is empty/ length should be > 6';
                  }else{
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15,),
              MaterialButton(
                minWidth: 170,
                height: 50,
                color: Colors.purple,
                shape: const StadiumBorder(),
                onPressed: () {
                  final valid = formkey.currentState?.validate();
                  if(valid == true){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Home()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid Username or Password'),
                          backgroundColor: Colors.red,
                        ));
                  }
                },
                child: const Text("Login",
                  style:TextStyle(color: Colors.white) ,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
