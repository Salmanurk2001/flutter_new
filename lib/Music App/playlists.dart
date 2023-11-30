import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: playlist(),
    debugShowCheckedModeBanner: false,));
}
class playlist extends StatelessWidget{
  var images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL89fl6nORkWO5lMHB_zaGixohsaW6G2CghA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Kz6_zdaRxx9ToxW6s2KygdXBajCHraQcJA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR40TPBgolg3FPQZi3VhJ1b519Lopig2uh1rw&usqp=CAU',
    'https://images.unsplash.com/photo-1619983081563-430f63602796?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bXVzaWN8ZW58MHx8MHx8fDA%3D',
    'https://media.istockphoto.com/id/1699368762/photo/cool-man-with-augmented-reality-goggles-dancing.webp?b=1&s=170667a&w=0&k=20&c=4u66FZnqPUlwEzCB5e1AP-TFqnqlLZ3m0Q5nbEytR-4=',
    'https://images.unsplash.com/photo-1506157786151-b8491531f063?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG11c2ljfGVufDB8fDB8fHww',

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Playlists",style:TextStyle(fontSize: 40,color: Color.fromRGBO(251, 174, 193, 1.0)),),
        bottom: AppBar(
          backgroundColor: Colors.black,
          title:TextField(
            decoration: InputDecoration(
              fillColor: Color.fromRGBO(42, 42, 42, 1.0),
              filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80)
                ),
                hintText: "Search...",hintStyle:TextStyle(
                color: Color.fromRGBO(251, 174, 193, 1.0)
            ) ,suffixIcon: Icon(Icons.search,
                color: Color.fromRGBO(251, 174, 193, 1.0)),
            ),
          ) ,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: GridView.custom(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              maxCrossAxisExtent: 300),
          childrenDelegate: SliverChildListDelegate(
            List.generate(6, (index) => Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 15),
                child: Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      ))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}