import 'package:final_project_rimon/controllers/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {

     final _controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Obx(()=> Text('${_controller.myValue.value}')),
        )

      ),
      body: Obx(()=> ListView.builder(
        itemCount: _controller.userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${_controller.userList[index]}'),
            subtitle: Text(_controller.userModel[index].name),
            leading: Text(_controller.userModel[index].address),
            trailing: const Icon(Icons.verified),
            onTap: (){
              // _controller.userList.removeAt(index);      Logic ekhane thakbe na
            _controller.removeItem(index);
            },
            onLongPress: (){
              _controller.updateItem(index);
            },
          );
        },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _controller.increment();
          _controller.addDataOnModel();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
