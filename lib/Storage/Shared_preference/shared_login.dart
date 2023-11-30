import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Statefull/homepage.dart';
import 'package:flutter_new/Storage/Shared_preference/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: Shared_Login(),
  debugShowCheckedModeBanner: false,));
}
class Shared_Login extends StatefulWidget{
  @override
  State<Shared_Login> createState()=> _Shared_LoginState();
}
class _Shared_LoginState extends State<Shared_Login>{
  final uname_ctrl=TextEditingController();
  final pwd_ctrl=TextEditingController();
  late SharedPreferences preferences;
  late bool loggedin;
  @override
  void initState(){
    check_user_loggedin();
    super.initState();
  }
  void check_user_loggedin()async{
    /// if first statement is null execute second Statement
    loggedin= preferences.getBool("loggedin")??false;
    if(loggedin==true){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
    }
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                hintText: "username",
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: pwd_ctrl,
              decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder()
              ),
            ),
            ElevatedButton(onPressed: ()async{
              preferences=await SharedPreferences.getInstance()!;
              String username=uname_ctrl.text;
              String password=pwd_ctrl.text;
              if(username!=""&& password!=""){
                preferences.setString("uname", username);
                preferences.setBool("loggedin", true);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}