import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(home:GridView_Custom(),
    debugShowCheckedModeBanner: false,));
}
class GridView_Custom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Coustom"),
      ),
      body:GridView.custom(
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        // childrenDelegate: SliverChildListDelegate([]),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
        ),
        childrenDelegate: SliverChildListDelegate(
            List.generate(10, (index) => Image.asset("assets/Icons/Iconarchive-Realistic-Fruits-Watermelon.512.png"))
        ),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   mainAxisSpacing: 10,
        //   crossAxisCount: 10,
        //   crossAxisSpacing: 10,
        // ),
        // childrenDelegate: SliverChildBuilderDelegate (List.generate(co, (index) =>Image.asset("assets/Icons/Iconarchive-Realistic-Fruits-Watermelon.512.png"))
        // )
      ),
    );
  }
}