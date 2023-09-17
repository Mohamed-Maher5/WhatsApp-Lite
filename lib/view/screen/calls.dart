import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/lists/callsList.dart';
import 'package:whatsapp_learn_project/lists/statusList.dart';
import 'package:whatsapp_learn_project/view/wiget/popupWidgetForAppBar.dart';
import 'package:whatsapp_learn_project/view/wiget/storyWidget.dart';

class calls extends StatelessWidget{
  Widget build(BuildContext context){
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ListTile(
          title: Text('Create call link',style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text('Share a link for your WhatsApp call'),
          leading: CircleAvatar(
            backgroundColor: Color(0xFF075E54),
            child: Icon(
                Icons.add_link,
                size: 25,
                color: Colors.white,
              ),
          ),
          ),
        Container(
          height: 25,
          color: Colors.grey[300],
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top : 4,left: 12.0),
            child: Text('Resent',style: TextStyle(color: Color(0xFF075E54),fontSize: 12,fontWeight: FontWeight.bold),),
          ),
        ),
        Container(
          height: height * 0.7,
          child: ListView.builder(
              itemCount: statusList.length,
              itemBuilder: (context,index) {
                return ListTile(
                  title: Text('${callsList[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.arrow_upward_rounded,color: Colors.green,size: 16,),
                      SizedBox(
                        width: 2,
                      ),
                      Text('${callsList[index].time}'),
                    ],
                  ),
                  leading: AdvancedAvatar(
                    size: 45,
                    image: AssetImage('${callsList[index].url}'),
                  ),
                  trailing: Icon(Icons.call,color: Color(0xFF075E54)),
                );
              }
          ),
        )
      ],
    );
  }
}