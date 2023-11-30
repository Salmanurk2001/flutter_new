
import 'package:flutter/material.dart';
import 'package:flutter_new/Mediaquery/Big%20Screen.dart';
import 'package:flutter_new/Mediaquery/MobileScreen.dart';
import 'Big Screen.dart';
import 'MobileScreen.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,));
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var devicewidth = MediaQuery.of(context).size.width;
    if(devicewidth < 600) {
      return MobileScreen();
    }else {
      return BigScreen();

    }
  }
}