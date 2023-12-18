import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main()async{
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(home: hive_crud(),
    debugShowCheckedModeBanner: false,));
}
class hive_crud extends StatefulWidget{
  @override
  State<hive_crud> createState()=> _hive_crudState();
}
class _hive_crudState extends State<hive_crud> {
  final todo = Hive.box('todo_box');
  List<Map<String, dynamic>> task = [];
  final tname_ctrl = TextEditingController();
  final tcont_ctrl = TextEditingController();

  @override
  void initState() {
    read_task();
    super.initState();
  }

  void read_task() {
    final task_from_hive = todo.keys.map((key) {
      final single_task = todo.get(key);
      return {
        'id': key,
        'tname': single_task['task_name'],
        'tcont': single_task['task_cont'],
      };
    }).toList();
    setState(() {
      task = task_from_hive.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo"),),
        body: task.isEmpty ? Center(child: CircularProgressIndicator())
            : ListView.builder(itemCount: task.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.task),
                title: Text(task[index]['tname']),
                subtitle: Text(task[index]['tcont']),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){create_edit_task(task[index]['id']);
                      }, icon: Icon(Icons.edit)),
                    IconButton(onPressed: () {delete_task(task[index]['id']);
                      }, icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            create_edit_task(null);
          },
          child: Icon(Icons.add),
        )
    );
  }

  void create_edit_task(int?itemkey) {
    if (itemkey != null) {
      final current_task =task.firstWhere((element) => element['id']==itemkey);
        tname_ctrl.text=current_task['taskname'];
        tcont_ctrl.text=current_task['taskcontent'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 50
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(controller: tname_ctrl,
                  decoration: InputDecoration(hintText: "Task Name"),),
                TextField(controller: tcont_ctrl,
                  decoration: InputDecoration(hintText: "Task Name"),),
                ElevatedButton(onPressed: () {
                  if (itemkey == null) {
                    create_task({
                      "task_name": tname_ctrl.text.trim(),
                      "task_cont": tcont_ctrl.text.trim()
                    });
                  }
                  else if (itemkey != null) {
                    edit_task(itemkey,{
                      "task_name": tname_ctrl.text.trim(),
                      "task_cont": tcont_ctrl.text.trim()
                    });
                  }
                  tname_ctrl.text = '';
                  tcont_ctrl.text = '';
                  Navigator.pop(context);
                },
                    child: Text(itemkey == null ? "Create task" : "Edit Task"))
              ],
            ),
          );
        }
    );
  }

  Future<void> create_task(Map<String, String> newtask) async {
    await todo.add(newtask);
    read_task();
  }

 Future <void> edit_task(int itemkey,Map<String, String> editedtask)async {
   await todo.put(itemkey,editedtask);
   read_task();
 }

  Future<void> delete_task(int itemkey)async {
    await todo.delete(itemkey);
    read_task();
  }
}
