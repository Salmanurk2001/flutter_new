import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home:Splash()));///MaterialApp - App default theme
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          ///setting image decoration as screen background
          // image: DecorationImage(
          //     fit:BoxFit.cover,image: AssetImage(
          //     "assets/Images/wallpaperflare.com_wallpaper.jpg")
          // )///NetworkImage(url)
          ///setting gradiant as screen background
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white,Colors.green,Colors.yellow,Colors.red,Colors.orange])
        ),
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.camera_outlined,
            //   size: 150,
            //   color: Colors.white
            // ),
             Image.asset("assets/Icons/Eleph.png",height: 300,),
           // Image.network("https://icons.iconarchive.com/icons/iconarchive/incognito-animal-2/256/Lion-icon.png"),
            Text(
              "APP NAME",
              // style: TextStyle(
              //     fontSize: 30,
              //     color:Colors.white,
              //     fontWeight: FontWeight.bold),
              ///text style using google_font
              style: GoogleFonts.playfair(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            )
          ],

        ),
      ),
      ),
    );
  }
}