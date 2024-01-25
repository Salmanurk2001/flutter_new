import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/statemanagement/provider_ex/controller/counter_controller.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
      create: (context)=>CounterProvider(),
      child: Counter_provider_ex(),),
  ));
}
class Counter_provider_ex  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var counterController = Provider.of<CounterProvider>(context);
   return Scaffold(
     appBar: AppBar(title: Text("Provider_Ex"),
     ),
     body:Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Increment Counter",
             style: TextStyle(
                 fontSize:20,
                 fontWeight: FontWeight.bold),),
           SizedBox(
             height: 15,
           ),
           Text(" Counter value ",
             style: TextStyle(
                 fontSize:20,
                 fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(
             height: 15
             ),
           ElevatedButton(onPressed: (){
             counterController.increment_Count();
           },
           child: const Text("Increment Value")),
         ],
       ),
     )
   );
  }
  
}