

import 'package:final_project_rimon/models/user_model.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{

 var myValue =1.obs;
 var appBarName ='HomeScreen'.obs;
 var cgpa =0.0.obs;
 var userList =[].obs;
 var myMap ={}.obs;
 var isActive =false.obs;

 var userModel =<UserModel>[].obs;

 void increment(){
    myValue++;
    userList.add('Item -$myValue');
 }

 void removeItem(int i){
userList.removeAt(i);

 }

 void addItem(int i){
  userList.add(userList[i]);


 }


 void addDataOnModel(){
 userModel.add(
     UserModel(name: 'Sabbir',age: 22,address: 'Dinajpur'),

 );
 userModel.add(
   UserModel(name: 'Arif',age: 18,address: 'Dhaka'),

 );
 userModel.add(
   UserModel(name: 'Riad',age: 20,address: 'Jessore'),

 );

}

  void updateItem(int index) {

  userList[index] = 'Rimon';

  }



 }