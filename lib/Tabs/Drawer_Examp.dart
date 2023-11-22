import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Drawer_Examp(),
  debugShowCheckedModeBanner: false,));
}
class Drawer_Examp extends StatelessWidget{
  var colours1=[Colors.red,Colors.orange,Colors.green];
  var colours2=[Colors.yellow,Colors.blue,Colors.pink];
  var colours3=[Colors.black,Colors.brown,Colors.grey];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer & Expansion Tile"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink[100],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Images/ali-kazal-rrAGoyrIVKQ-unsplash.jpg"),fit: BoxFit.fill)
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/Images/daniel-j-schwarz-Mta4pK_YAZ8-unsplash.jpg"),),
                otherAccountsPictures: [CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/istockphoto-1424809150-1024x1024.jpg"),
                ),
                CircleAvatar(backgroundImage: AssetImage("assets/Images/lorenzo-hamers-6CKlMdOAHCc-unsplash.jpg"),)],
                accountName: Text("My Account"),
                accountEmail: Text("abc123@gmail.com")),
            ListTile(leading: Icon(Icons.person),title: Text("Profile"),),
            ListTile(leading: Icon(Icons.home),title: Text("Home"),),
            ListTile(leading: Icon(Icons.search),title: Text("Search"),),
          ],
        ),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text("tile1"),
            subtitle: Text("colors"),
          children: List.generate(3, (index) => ListTile(
            leading: CircleAvatar(
                    backgroundColor: colours1[index],)),)
          ),
          ExpansionTile(
              title: Text("tile1"),
              subtitle: Text("colors"),
              children: List.generate(3, (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: colours2[index],)),)
          ),
          ExpansionTile(
              title: Text("tile1"),
              subtitle: Text("colors"),
              children: List.generate(3, (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: colours3[index],)),)
          )
        ],
      ),
    );

  }
}