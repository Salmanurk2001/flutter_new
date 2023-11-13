import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ListView1(),
    debugShowCheckedModeBanner: false,));
}
class ListView1 extends StatelessWidget {
  var name = [
    "Delhi",
    "Finland",
    "London",
    "Vancouver",
    "New York",
  ];
  var image=["https://images.unsplash.com/photo-1587474260584-136574528ed5?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVsaGl8ZW58MHx8MHx8fDA%3D",
    "https://i.natgeofe.com/k/2847c949-6de3-4d11-998a-d3ce12d9edb0/finland-cityscape_3x2.jpg",
    "https://www.goldentours.com/travelblog/wp-content/uploads/2015/07/shutterstock_555823393-973x649.jpg",
    "https://youimg1.tripcdn.com/target/10080d0000006ulnb1801.jpg",
    "https://cdn.tiqets.com/wordpress/blog/wp-content/uploads/2017/08/03134557/24-hours-in-new-york-1.jpg"];
  var country=["India","Europe","UK","Canada","USA"];
  var population =["32.9","5.54","8.8","2.6","10.4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          elevation: 500,
          centerTitle: true,
          backgroundColor: Color(0xFFEF6C00),
          title:Text("Cities Around World",
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),

        body: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(5, (index) => ListTile(
              tileColor: Color(0xFFF9A825),
              leading: Image.network(image[index],
              ),
              title: Text(name[index]),
              subtitle: Row(
                children: [
                  Text(country[index]),
                  Align(alignment: Alignment.centerLeft,
                    child: Text("Population:${population[index]}mil",),),],
              ),
            ),
            ),
            )
        );
    }
}
