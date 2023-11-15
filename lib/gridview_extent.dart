import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(home:GridView_4(),
    debugShowCheckedModeBanner: false,));
}
class GridView_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Count"),
      ),
      body: GridView.extent(maxCrossAxisExtent: 170,mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: List.generate(5, (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:  Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(child: Image.asset("assets/Icons/Iconarchive-Realistic-Fruits-Strawberry.512.png")),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                  onPressed: () {},
                  icon:Icon(Icons.shopping_cart),
                  label: Text("Buy Now"),)
              ],
            ),
          ),
        )),
      ),

    );
  }
}