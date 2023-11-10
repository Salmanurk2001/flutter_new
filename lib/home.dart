import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Home(),
  debugShowCheckedModeBanner: false,));
}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My contact"),),
      body: ListView(
        children: [
          Card(
            color: Colors.green,
            elevation: 10,
            shadowColor: Colors.red,
            child:ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/Images/istockphoto-1424809150-1024x1024.jpg"),),
              //Image.asset("assets/Images/istockphoto-1389941891-1024x1024.jpg"),
              title: Text("name"),
              subtitle: Row(
                  children: [
                    Icon(Icons.done_all,color: Colors.blue,),
                    Text("some messages")
                  ],),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("10:30"),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: Text("2"),
                  ),
                ],
              ),
            ),
          ),
          FaIcon(FontAwesomeIcons.facebook),
          ListTile(
            leading: CircleAvatar(backgroundColor:Colors.blue,
              child: Icon(Icons.person),),
            title: Text("name"),
            subtitle: Text("phonr"),
            trailing: Icon(Icons.phone),
          ),
          Card(
            color: Colors.green,
            elevation: 10,
            shadowColor: Colors.red,
            child:ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/Images/istockphoto-1424809150-1024x1024.jpg"),),
              //Image.asset("assets/Images/istockphoto-1389941891-1024x1024.jpg"),
              title: Text("name"),
              subtitle: Text("phone"),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor:Colors.blue,
              child: Icon(Icons.person),),
            title: Text("name"),
            subtitle: Text("phonr"),
            trailing: Icon(Icons.phone),
          ),
          Card(
            color: Colors.green,
            elevation: 10,
            shadowColor: Colors.red,
            child:ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/Images/istockphoto-1424809150-1024x1024.jpg"),),
              //Image.asset("assets/Images/istockphoto-1389941891-1024x1024.jpg"),
              title: Text("name"),
              subtitle: Text("phone"),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor:Colors.blue,
              child: Icon(Icons.person),),
            title: Text("name"),
            subtitle: Text("phonr"),
            trailing: Icon(Icons.phone),
          ),
          Card(
            color: Colors.green,
            elevation: 10,
            shadowColor: Colors.red,
            child:ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/Images/istockphoto-1424809150-1024x1024.jpg"),),
              //Image.asset("assets/Images/istockphoto-1389941891-1024x1024.jpg"),
              title: Text("name"),
              subtitle: Text("phone"),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor:Colors.blue,
              child: Icon(Icons.person),),
            title: Text("name"),
            subtitle: Text("phonr"),
            trailing: Icon(Icons.phone),
          ),
          Card(
            color: Colors.green,
            elevation: 10,
            shadowColor: Colors.red,
            child:ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage("assets/Images/istockphoto-1424809150-1024x1024.jpg"),),
        //Image.asset("assets/Images/istockphoto-1389941891-1024x1024.jpg"),
            title: Text("name"),
            subtitle: Text("phone"),
            trailing: Icon(Icons.phone),
          ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor:Colors.blue,
            child: Icon(Icons.person),),
            title: Text("name"),
            subtitle: Text("phonr"),
            trailing: Icon(Icons.phone),
          )
        ],
      ),
    );
  }
}
