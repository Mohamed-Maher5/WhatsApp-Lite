import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import '../../lists/chatList.dart';

class starredMessages extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
            title: ListTile(
              title : Text('Starred messages',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.search,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.more_vert_rounded,color: Colors.white,),
              ),
            ],
            backgroundColor: Color(0xFF075E54)
        ),
      body: Text(''),
    );
  }
}