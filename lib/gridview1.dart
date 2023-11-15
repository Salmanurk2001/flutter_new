import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Gridview_1(),
    debugShowCheckedModeBanner: false,));
}

class Gridview_1 extends StatelessWidget {
  var icon1 = [Icons.home_sharp,
    Icons.notification_important,
    Icons.local_see,
    Icons.local_attraction ,
    Icons.leak_remove_rounded,
    Icons.play_lesson,
    Icons.call,
    Icons.mail,
    Icons.map_sharp  ,
    Icons.equalizer_rounded,
    Icons.mic_off ,
    Icons.note_add,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 90,
              ),

              children: List.generate(12, (index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),

                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          icon1[index],
                          size: 40,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                " Heart \n Shaker",style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold),

                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ),
          ),
        );
    }
}