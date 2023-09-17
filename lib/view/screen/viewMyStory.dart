import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/lists/callsList.dart';

import '../../lists/chatList.dart';

class viewMyStory extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: ListTile(
            title : Text('My status',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          backgroundColor: Color(0xFF075E54)
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('${chatList.length} views',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle:Text('Yesterday 20:53'),
            leading: AdvancedAvatar(
              size: 48,
              image: AssetImage('images/photo12.jfif'),
            ),
            trailing: Icon(Icons.more_vert_outlined),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text('Your status updates will disappear after 24 hours.',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 12
            ),)
          )
        ],
      ),
    );
  }
}