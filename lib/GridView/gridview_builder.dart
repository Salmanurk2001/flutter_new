import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Gridview_Builder(),debugShowCheckedModeBanner: false,));
}
class Gridview_Builder extends StatelessWidget{
  // const Gridview2{String.key}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,),
            itemBuilder: (context, index){
              return Column(
                  children: [
                    Image.network("https://images.unsplash.com/photo-1699116548123-73affe0987b7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8"),
                    Text(
                      "Text $index",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 25,fontWeight: FontWeight.bold),),
                  ]
              );
            }
        ),
      ),
    );

  }
}