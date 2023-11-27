import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stack_Examp(),
  debugShowCheckedModeBanner: false,));
}
class Stack_Examp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Stack(
        children: [
          Container(
            height:500,width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Images/tommao-wang-4Wm7wT6IicM-unsplash.jpg"),fit: BoxFit.fill)
          ),
          ),
          Positioned(
            left: 100,
              right: 75,
              bottom: 50,
              child: Image.asset("assets/Images/simom-caban-3QtPOA8NCxQ-unsplash.jpg")),
          Container(
            height:100,width: 100,color: Colors.blue,),
          Text("NAME",style: TextStyle(fontSize: 30),),
          Positioned(
              left: 50 ,
              right: 10,
              top: 10,
              child: Text("Place",style: TextStyle(fontSize: 25,color: Colors.white),),)
        ],
      ),
    );
  }
}