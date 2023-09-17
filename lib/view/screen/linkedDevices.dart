import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/model/chatModel.dart';

import '../../lists/chatList.dart';

class linkedDevices extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: ListTile(
              title : Text('Linked devices',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            backgroundColor: Color(0xFF075E54)
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.video_label_outlined,size: 300,color: Color(0xFF075E54),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Use WhatsApp on other devices',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Use WhatsApp on Web, Desktop, and other devices.',style: TextStyle(fontSize: 12,color: Colors.grey),),
                ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF075E54),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Text('link a device',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Container(
                  height: 6,
                  color: Color(0xFF075E54),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top : 10,left: 46.0),
                  child: Container(
                    width: 300,
                    child: Text('Your personal messages are end-to-end encrypted on all your devices',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
              ),
                ),
            ],
          ),
        )
    );
  }
}