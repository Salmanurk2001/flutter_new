import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView2_Seperated(),
      debugShowCheckedModeBanner: false));
}
class ListView2_Seperated extends StatelessWidget{
  var name=["January","February","March","April","May","June","July",
    "August","September","October","November","December"];
  @override
  Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // title: Text("Months")
      ),
      body: ListView.separated(itemBuilder: (context,index)
      {return Card(
        color:Colors.white,
        child: Text(name[index],style: TextStyle(
            fontSize: 20,
            color: Colors.black
        ),),
      );
      },
          separatorBuilder: (context,index) {
            if (index % 4 == 0) {
              return Card(
                color: Colors.red,
                child: Container(
                  width: 30,
                  height: 30,
                  child: Text("Advertisement", style: TextStyle(
                    fontSize: 20,
                    color:Colors.white,
                  ),

                  ),),
              );}
            else {
              return SizedBox(
                width: 15,
                height: 15,
              );
            }
          },
          itemCount: 12),
    );
  }
}