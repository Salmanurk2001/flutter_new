import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: orientation_examp(),
  debugShowCheckedModeBanner: false,));
}
class orientation_examp extends StatelessWidget{
  var height,width,orientation;

  @override
  Widget build(BuildContext context){
    orientation=MediaQuery.of(context).orientation;///to get oriantation of our app
    ///MediaQuery.of(context).size
    ///size of window
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation MediaQuery"),
        backgroundColor: Colors.purple,
      ),
      body:orientation==Orientation.portrait?Container(
        height: height/2,
        width: width/2,
        color: Colors.red,
        child: Center(child: Text("Portrait"),),
      ):Container(
        height: height/4,
        width: width/4,
        color: Colors.blue,
        child: Center(child: Text("Landscape"),),
      ) ,
    );
  }
}