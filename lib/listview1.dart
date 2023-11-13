import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: ListView_custom(),
    debugShowCheckedModeBanner: false,));
}
class ListView_custom extends StatelessWidget{

  var place = ['Delhi','Finland','London','Vancouver','New York'];
  var location = ['India','Europe','UK','Canada','USA'];
  var population = ['32.9 mil','5.54 mil','8.8 mil','2.6 mil','36.5 mil'];
  var images = ["https://images.unsplash.com/photo-1587474260584-136574528ed5?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVsaGl8ZW58MHx8MHx8fDA%3D",
    "https://i.natgeofe.com/k/2847c949-6de3-4d11-998a-d3ce12d9edb0/finland-cityscape_3x2.jpg",
    "https://www.goldentours.com/travelblog/wp-content/uploads/2015/07/shutterstock_555823393-973x649.jpg",
    "https://youimg1.tripcdn.com/target/10080d0000006ulnb1801.jpg",
    "https://cdn.tiqets.com/wordpress/blog/wp-content/uploads/2017/08/03134557/24-hours-in-new-york-1.jpg"];

  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFFE53935),
        title: Text("Cities Around World",style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 25),),
        centerTitle: true,
      ),
      body: ListView.custom(
        childrenDelegate:SliverChildBuilderDelegate(
            childCount: place.length,
                (context,index)=>Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 140,
                width: 150,
                child: Card(
                    color: Colors.orange,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(images[index],height: 150,width: 200,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30),
                            Text('  ${place[index]}', style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 20),),
                            SizedBox(height: 20),
                            Text('  ${location[index]}',style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 15),),
                            Text('  Population: ${population[index]}         '),
                          ],
                        ),
                      ],

                    )
                ),
              ),
            )
        ),

      ),
    );
  }
}