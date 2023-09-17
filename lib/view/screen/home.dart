import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp_learn_project/controller/homeController.dart';
import 'package:whatsapp_learn_project/view/screen/calls.dart';
import 'package:whatsapp_learn_project/view/screen/chats.dart';
import 'package:whatsapp_learn_project/view/screen/status.dart';
import 'package:whatsapp_learn_project/view/wiget/popupWidgetForAppBar.dart';
import 'package:image_picker/image_picker.dart';
class home extends GetView<HomeController>{
  Widget build(BuildContext context){
    Get.put(HomeController());
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
            Tab(
              child: IconButton(
            onPressed: () {
              controller.getImage(ImageSource.camera);
              // controller.getImage(ImageSource.gallery); //to pick image from gallery.
            },
            icon: Icon(
              Icons.camera_alt,
              color: Colors.teal,
            ),
              ),
            ),
            Tab(child: Text('Chats'),),
            Tab(child: Text('Status'),),
            Tab(child: Text('Calls'),),
          ],),
          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.search),),
            popupWidgetForAppBar('New group','New broadcast','Linked devices','Starred messages','Setthings'),
          ],
        ),
        body: TabBarView(
          children: [
            Text(''),
            chats(),
            status(),
            calls(),
          ],
        ),
    )
    );
  }
}