import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/statemanagement/provider_ex/controller/theme_controller.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      child:MyApp1()));
}
class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).
      isDarkTheme? ThemeData.dark():ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ChangeNotifierProvider(
          create: (context)=>ThemeProvider(),
          child: App_theme_change()),);
  }
}
class App_theme_change extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Provider.of<ThemeProvider>(context,listen: false).switchTheme();
        },
        child: Text("Switch Theme"),
        ),
      ),
    );
  }
}