import 'package:flutter_new/Onboarding_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Carousel_1.dart';
import 'package:flutter_new/stateful_welcome.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main(){
  runApp(MaterialApp(home: OnBoarding_Examp(),
  debugShowCheckedModeBanner: false,));
}
class OnBoarding_Examp extends StatelessWidget{
  PageDecoration pageDecoration=PageDecoration(
    titleTextStyle: TextStyle(color: Colors.purple,
    fontSize: 35,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,),
    bodyTextStyle: TextStyle(
      color: Colors.red,
      fontSize: 20,

    )
  );
  @override
  Widget build(BuildContext context){
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title:"Page1",
          image: Image.asset("assets/Icons/Eleph.png"),
          body: "dhbhdbchdbcbchcbhdbchdbchbdhcbdh"
        ),
        PageViewModel(
            title:"Page2",
            image: Image.asset("assets/Icons/Eleph.png"),
            body: "dhbhdbchdbcbchcbhdbchdbchbdhcbdh"
        ),
        PageViewModel(
            title:"Page3",
            image: Image.asset("assets/Icons/Eleph.png"),
            body: "dhbhdbchdbcbchcbhdbchdbchbdhcbdh"
        ),
      ],
      onDone:()=>Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>Splash2())) ,
      onSkip: ()=>Navigator.of(context).push(
          MaterialPageRoute(builder:(context)=>Carousel())),
      showSkipButton: true,
      skip: Text("Skip"),
      next: Text("next"),
      done: Text("Continue"),
      dotsDecorator: const DotsDecorator(
        color: Colors.red,
        activeColor: Colors.blue,
      ),
    );
  }

}