import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:List_generate(),
    debugShowCheckedModeBanner: false,));
}
class List_generate extends StatelessWidget {
  var name = [
    "Anu",
    "Roshan",
    "Mathew",
    "Jaison",
    "Andrew",
    "faizal",
    "vijay",
    "Elsa",
    "Iyal",
    "Sona",
  ];
  var image =["assets/Images/tommao-wang-4Wm7wT6IicM-unsplash.jpg",
  "assets/Images/tobias-pfeifer-8UngBueS2nI-unsplash.jpg",
  "assets/Images/simom-caban-3QtPOA8NCxQ-unsplash.jpg",
  "assets/Images/ali-kazal-rrAGoyrIVKQ-unsplash.jpg",
  "assets/Images/neom-Z6YxSbcIXT0-unsplash.jpg",
  "assets/Images/daniel-j-schwarz-Mta4pK_YAZ8-unsplash.jpg",
  "assets/Images/neom-rVC6O_gDE0Q-unsplash.jpg",
  "assets/Images/neom-i60yUhfWeYI-unsplash.jpg",
  "assets/Images/neom-0SUho_B0nus-unsplash.jpg",
  "assets/Images/milad-fakurian-51kG7M5sX-E-unsplash.jpg"];
  var message=["hlo","hai","where","Comming","bye","see you","ok","then","Good","Miss you"];
  var icons=[Icon(Icons.done_all,color:Colors.blue),
    Icon( Icons.done,),
    Icon( Icons.access_time,color: Colors.green,),
    Icon(Icons.done_all,color:Colors.blue),
    Icon( Icons.done,),
    Icon( Icons.access_time,color: Colors.green,),
    Icon(Icons.done_all,color:Colors.blue),
    Icon( Icons.done,),
    Icon( Icons.access_time,color: Colors.green,),
    Icon( Icons.done,)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("List Generated"),),
        body: ListView(
          children: List.generate(10, (index) =>
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(image[index]
                  // "assets/Images/istockphoto-1424809150-1024x1024.jpg"
                ),),
                title: Text(name[index]),
                subtitle: Row(
                  children: [
                    (icons[index]),
                    Text(message[index]),],
                ),
                trailing: Column(
                  children: [
                    Text("today"),
                    CircleAvatar(backgroundColor: Colors.green,
                      radius: 10, child: Text("1"),),
                  ],
                ),
              ),),
        )
    );
  }
}

