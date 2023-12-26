import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Storage/Hive/Hive2/Database/hivedb.dart';
import 'package:flutter_new/Storage/Hive/Hive2/Mode/user_model.dart';
import 'package:flutter_new/Storage/Hive/Hive2/View/hive_home.dart';
import 'package:flutter_new/Storage/Hive/Hive2/View/reg_hive.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  final dbDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dbDir.path);//init hive
  await Hive.openBox<User>('userData');
  runApp(GetMaterialApp(home: HiveLogin(),debugShowCheckedModeBanner: false,));
}
class HiveLogin extends StatelessWidget{
  final email_ctrl=TextEditingController();
  final pwd_ctrl= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: [
          TextField(
            controller:email_ctrl,
            decoration: InputDecoration(hintText: "email"),
          ),
          TextField(
            controller: pwd_ctrl,
            decoration: InputDecoration(hintText: "password"),
          ),
          ElevatedButton(onPressed: ()async{
            final regUserlist=await HiveDb.instance.getUser();
            validate_login(regUserlist);
          }, child: Text("Login")),
          TextButton(onPressed: (){
            Get.to(HiveReg());
          }, child: Text("Didn't have an account? Register "))
        ],
      ),
    );
  }
  Future<void> validate_login(List<User> regUserlist)async {
    final eemail=email_ctrl.text.trim();
    final epwd=pwd_ctrl.text.trim();
    bool userFound=false;
    if(eemail!=''&& epwd!=''){
      await Future.forEach(regUserlist, (user){
        if(eemail==user.email&&epwd==user.password)
          {
            userFound=true;
          }
        else{
          userFound=false;
        }
      }
      );
      if(userFound==true){
        Get.snackbar("Success", "Login success",colorText: Colors.green);
        Get.to(HiveHome());

      }else{
        Get.snackbar("Error", "User not found",colorText: Colors.red);
      }
      }
    else{
      Get.snackbar("Error", "Fields must not be empty",colorText: Colors.red);
    }
    }

}