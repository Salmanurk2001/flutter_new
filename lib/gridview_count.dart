import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(home:GridView_3(),
    debugShowCheckedModeBanner: false,));
}
class GridView_3 extends StatelessWidget{
  var fruits=["assets/Icons/Iconarchive-Realistic-Fruits-Apricot.512.png",
    "assets/Icons/Iconarchive-Realistic-Fruits-Banana.512.png",
    "assets/Icons/Iconarchive-Realistic-Fruits-Clementine.512.png",
    "assets/Icons/Iconarchive-Realistic-Fruits-Grape.512.png",
    "assets/Icons/Iconarchive-Realistic-Fruits-Pineapple.512.png",
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("GridView Count"),
      ),
      body:GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3,
        children:List.generate(5, (index) => Card(
          color:  Colors.primaries[Random().nextInt(Colors.primaries.length)],
          child: Row(
            children: [
              Expanded(child: Image.asset(fruits[index])) ,
              const Text("Pinapple")
            ],
          ),
        ),
        ),
      ),
    );
  }

}
