import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import '../../lists/chatList.dart';

class newGroup extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            title : Text('New Group',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            subtitle: Text('Add participants',style: TextStyle(color: Colors.white)),
           trailing: Icon(Icons.search),
        ),
        backgroundColor: Color(0xFF075E54)
      ),
      body: ListView.builder(
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
      )
    );
  }
}