import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(home: Clipper_Examp(),
  debugShowCheckedModeBanner: false,));
}
class Clipper_Examp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              widthFactor: .4,
                heightFactor: .3,
                child: Image.asset("assets/Images/tommao-wang-4Wm7wT6IicM-unsplash.jpg")),
          ),
          SizedBox(height: 10,),
          ClipRect(
            child: Image.asset("assets/Images/neom-yetQBOG_ZWg-unsplash.jpg"),
            // borderRadius:BorderRadius.circular(20),
          ),
          SizedBox(height: 10,),
          ClipOval(
            child: Image.asset("assets/Images/tobias-pfeifer-8UngBueS2nI-unsplash.jpg"),
          ),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(
              height: 300,
              color: Colors.red,
            ),
          ),
          ClipPath(
          clipper: TriangleClipper(),
            child: Container(
              height: 300,
              color: Colors.blue,
            ),
          ),
          ClipPath(
            clipper: StarClipper(6),
            child: Image.asset("assets/Images/milad-fakurian-51kG7M5sX-E-unsplash.jpg"),
          ),
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 300,
              color: Colors.green,
            ),
          ),
          ClipPath(
            clipper: MessageClipper(),
            child: Image.asset("assets/Images/milad-fakurian-51kG7M5sX-E-unsplash.jpg"),
          ),
        ],
      ),
    );
  }
}