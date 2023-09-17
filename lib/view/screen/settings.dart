import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/model/chatModel.dart';
import 'package:whatsapp_learn_project/view/screen/myProfile.dart';

import '../../lists/chatList.dart';

class settings extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: ListTile(
              title : Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            backgroundColor: Color(0xFF075E54)
        ),
        body: Column(
          children: [
            MaterialButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => myProfile(),));
              },
              child: ListTile(
                title: Text('Mohamed Maher',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Column(
                          children: [
                            Text('و بشر الصابرين                                       ')
                          ],
                        ),
                trailing: Icon(Icons.qr_code),
                leading: AdvancedAvatar(
                  size: 45,
                  image: AssetImage('images/photo12.jfif'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0,left: 12,top: 7),
              child: Divider(
                height: 3,
                color: Colors.grey[300],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text('Account'),
                subtitle: Text('privecy,security,change number',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.vpn_key_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text('Chats'),
                subtitle: Text('Themes,backgroud screen',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.chat),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text('notification'),
                subtitle: Text('notification messages',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.notification_add_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text('backUp'),
                subtitle: Text('Network,auto download',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.backup_sharp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text('Help'),
                subtitle: Text('Help center',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.help_center),
              ),
            ),
          ],
        )
    );
  }
}