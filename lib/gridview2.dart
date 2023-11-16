import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Custom_Widget.dart';
void main(){
  runApp(MaterialApp(home: GridView2(),debugShowCheckedModeBanner: false,));
}
class GridView2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
            crossAxisCount: 2,
        children: List.generate(20,
                (index) => MyWidget(label: Text("hello"),onpressed: (){},
                  bgcolor: Colors.cyan,
                  image: Image.asset("assets/Images/wallpaperflare.com_wallpaper.jpg"),
                )),
        )
    );
  }
}