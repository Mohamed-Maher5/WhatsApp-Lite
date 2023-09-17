import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/model/chatModel.dart';

import '../../lists/chatList.dart';

class newBroadcast extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: ListTile(
              title : Text('New broadcast',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              subtitle: Text('0 of ${chatList.length} selected',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.search),
            ),
            backgroundColor: Color(0xFF075E54)
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 12),
                  child: Text('Only contacts with +01127212732 in their address book will receive your broadcast messages',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                        color: Colors.grey
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Divider(
                height: 3,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: ListView.builder(
                    itemCount: chatList.length,
                    itemBuilder: (context,index) {
                      return Padding(
                        padding: const EdgeInsets.only(top : 8),
                        child: ListTile(
                            title:Text('${chatList[index].name}',),
                            subtitle: Text('${chatList[index].message}',maxLines: 1,overflow: TextOverflow.ellipsis,),
                            leading: AdvancedAvatar(
                              size: 45,
                              image: AssetImage('${chatList[index].url}'),
                            )
                        ),
                      );
                    }
                ),
              ),
            ),
          ],
        )
    );
  }
}