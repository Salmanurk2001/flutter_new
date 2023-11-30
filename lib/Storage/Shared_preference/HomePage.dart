import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    preferences=await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString("uname")!;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
    );
  }
}