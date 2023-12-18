import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'db_operation.dart';
void main(){
  runApp(MaterialApp(home: sqflite(),
  debugShowCheckedModeBanner: false,));
}
class sqflite extends StatefulWidget{
  @override
  State<sqflite> createState() => _sqfliteState();
}

class _sqfliteState extends State<sqflite> {
  final name_ctrl=TextEditingController();
  final phone_ctrl=TextEditingController();
  List<Map<String,dynamic>>contacts=[];
  var isloading=true;
  @override
  void initState() {
  loadData();
    super.initState();
  }
  void loadData()async{
    final data=await SQLHelper.readData();
    setState(() {
      contacts=data;
      isloading=false;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),),
      body: isloading?Text('No Data'):ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context,index){
        return Card(child:ListTile(
        title: Text(contacts[index]['name']),
          subtitle: Text(contacts[index]['phone']),
          trailing: Wrap(children: [
            IconButton(onPressed: (){showSheet(contacts[index]['id']);}, icon: Icon(Icons.edit)),
            IconButton(onPressed: (){
              delete_Contact(contacts[index]['id']);
            }, icon: Icon(Icons.delete)),
          ],),
        ),);
    }),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=> showSheet(null),
          child:const Icon(Icons.add)),
    );
  }
  void showSheet(int? id) async{
  if (id!=null){
  var  selected_contact=contacts.firstWhere((element) => element['id']==id);
  name_ctrl.text=selected_contact['name'];
  phone_ctrl.text=selected_contact['phone'];
  }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context){
      return Container(
          padding:EdgeInsets.only(
              top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom+50
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: name_ctrl,
                decoration: InputDecoration(hintText: "Name"),
              ),
              TextField(
                controller: phone_ctrl,
                decoration: InputDecoration(hintText: "Phone"),
              ),
              ElevatedButton(onPressed: () async {
                if (id == null) {
                  await create_contact();
                }
                if (id != null) {
                  await update_contact(id);
                }
              }, child: Text(id == null ? "create contact" : "update contact"))
            ],
          ),
        );
    }
    );
  }

 Future<void> create_contact() async{
   await SQLHelper.createContact(name_ctrl.text,phone_ctrl.text);
   loadData();
   name_ctrl.text='';
   phone_ctrl.text='';
   Navigator.pop(context);
 }

  Future<void>update_contact(int id) async{
    await SQLHelper.updateContact(id,name_ctrl.text, phone_ctrl.text);
    loadData();
    name_ctrl.text='';
    phone_ctrl.text='';
    Navigator.pop(context);
  }
  Future<void>delete_Contact(int?id)async{
    await SQLHelper.delete_Contact(id,);
    loadData();
  }
}
