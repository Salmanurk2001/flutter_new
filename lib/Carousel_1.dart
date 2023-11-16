import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void  main(){
  runApp(MaterialApp(home: Carousel(),debugShowCheckedModeBanner: false,));
}
class Carousel extends StatelessWidget{
 var image=["assets/Images/ali-kazal-rrAGoyrIVKQ-unsplash.jpg",
   "assets/Images/daniel-j-schwarz-Mta4pK_YAZ8-unsplash.jpg",
   "assets/Images/lorenzo-hamers-6CKlMdOAHCc-unsplash.jpg",
   "assets/Images/luke-thornton-Pcwo-oCZ5iY-unsplash.jpg",
   "assets/Images/milad-fakurian-51kG7M5sX-E-unsplash.jpg",];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:CarouselSlider(items: List.generate(5,
              (index) =>Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image[index]),fit: BoxFit.fill)),
      )), options: CarouselOptions(
        height: double.infinity,
        viewportFraction: .8 ,
        aspectRatio: 16/9,
        initialPage: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4),
        autoPlayCurve: Curves.linear,
        pauseAutoPlayOnTouch: true,
      ))

    );
  }
}