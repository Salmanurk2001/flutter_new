import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(home: GridView_Constructor(),debugShowCheckedModeBanner: false,));
}
class GridView_Constructor extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:GridView(
          gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,mainAxisSpacing: 15,
          crossAxisSpacing: 8),
        children: List.generate(15, (index) => Container(
          color:  Colors.primaries[Random().nextInt(Colors.primaries.length)],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Icon(Icons.cake,size: 20,),
                Text("cake",style: GoogleFonts.sahitya(fontWeight: FontWeight.bold,fontSize: 25),)
              ],
            ),
          ),


          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
          // Card(child: Center(child:Icon(Icons.cake,size: 20,),),),
      ),
      ),
      )
      );
  }
}