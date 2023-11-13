import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(home: ListView_custom(),
    debugShowCheckedModeBanner: false,));
}
class ListView_custom extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("ListView_Custome") ,
      ),
      body: ListView.custom(
          // childrenDelegate:SliverChildListDelegate(
          //   List.generate(10, (index) =>
          //       Card(
          //         child: Center(
          //           child: Text("Hi...."),
          //         ),))
          // )
        childrenDelegate:SliverChildBuilderDelegate(
          childCount: 10,
            (context,index)=>Card(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/Icons/dolphin.png",height: 100,width: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name  :Dolphin"),
                      Text("Quality:2"),
                      Text("Price :\$2000/kg")
                    ],
                  ),
                  MaterialButton(onPressed: (){},
                  color: Colors.brown,
                  shape: StadiumBorder(),
                  minWidth: 120,
                    height: 40,
                  child: Text("Add to Cart",style: TextStyle(color: Colors.white),),)
                ],

              )
            )
        ),

      ),
    );
  }
}