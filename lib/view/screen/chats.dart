import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_learn_project/lists/chatList.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
class chats extends StatelessWidget{
  Widget build(BuildContext context){
    return ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(top : 8),
            child: ListTile(
              title:Text('${chatList[index].name}',),
              subtitle: Text('${chatList[index].message}',maxLines: 1,overflow: TextOverflow.ellipsis,),
              trailing: Text('${chatList[index].time}'),
              leading: AdvancedAvatar(
                size: 45,
                image: AssetImage('${chatList[index].url}'),
              )
            ),
          );
        }
    );
  }
}