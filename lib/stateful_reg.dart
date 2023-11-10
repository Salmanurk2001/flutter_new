import 'package:flutter/material.dart';
import 'package:flutter_new/stateful_Login.dart';

class Reg_Stateful extends StatefulWidget {
  const Reg_Stateful({super.key});

  @override
  State<Reg_Stateful> createState() => _Reg_StatefulState();
}

class _Reg_StatefulState extends State<Reg_Stateful> {
  final formkey = GlobalKey<FormState>();
  String? pwd;
  bool showpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Registration Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  validator: (username) {
                    if (username!.isEmpty || !username.contains('@')) {
                      return 'username is invalid!!!!!!';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "Username", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: showpassword,
                  obscuringCharacter: '*',
                  validator: (password) {
                    pwd = password;
                    if (password!.isEmpty || password.length < 6) {
                      return 'Password is empty/ length should be > 6';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpassword == true) {
                                showpassword = false;
                              }else{
                                showpassword = true;
                              }
                            });
                          },
                          icon: Icon(showpassword == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Password",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: showpassword,
                  obscuringCharacter: '*',
                  validator: (confirmpassword) {
                    pwd = confirmpassword;
                    if (confirmpassword!.isEmpty || confirmpassword != pwd) {
                      return 'Password is empty / mismatch';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              if(showpassword==true){
                                showpassword=false;
                              }else{
                                showpassword=true;
                              }
                            });
                          },icon: Icon(showpassword==true? Icons.visibility_off_sharp : Icons.visibility)),
                      hintText: "Password", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  minWidth: 170,
                  height: 50,
                  color: Colors.purple,
                  shape: const StadiumBorder(),
                  onPressed: () {
                    final valid = formkey.currentState?.validate();
                    if (valid == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Stateful()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Registration Failed'),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
