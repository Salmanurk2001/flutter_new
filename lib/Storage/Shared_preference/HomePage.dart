import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Storage/Shared_preference/Shared_SignUp.dart';
import 'package:flutter_new/Storage/Shared_preference/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String username;
  late SharedPreferences preferences;
  @override
  void initState(){
    fetch_data();
    super.initState();
  }
  void fetch_data() async{
    final SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString("uname")!;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Hello $username"),
      actions: [IconButton(onPressed: ()async{
        final SharedPreferences preferences =await SharedPreferences.getInstance()!;
        preferences.setBool("loggedin", false);
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SharedSignup()));
      }, icon: Icon(Icons.logout))],
      ),
    );
  }
}