import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/lists/statusList.dart';
import 'package:whatsapp_learn_project/view/wiget/popupWidgetForAppBar.dart';
import 'package:whatsapp_learn_project/view/wiget/storyWidget.dart';

import '../wiget/popupWidgetForStory.dart';

class status extends StatelessWidget{
  Widget build(BuildContext context){
    var height = MediaQuery.of(context).size.height;
    return Column(
              children: [
                ListTile(
                  title: Text('My Status',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('Tap to add a status'),
                  leading: AdvancedAvatar(
                    size: 45,
                    image : AssetImage('images/photo12.jfif'),
                  ),
                  trailing: popupWidgetForStories('View My Story'),
                ),
                Container(
                  height: 25,
                  color: Colors.grey[300],
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top : 4,left: 12.0),
                    child: Text('Resent Updated',style: TextStyle(color: Color(0xFF075E54),fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  height: height * 0.7,
                  child: ListView.builder(
                      itemCount: statusList.length,
                      itemBuilder: (context,index) {
                        return ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => storyWidget('${statusList[index].url}','${statusList[index].name}')
                             ),
                            );
                          },
                          title: Text('${statusList[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                          subtitle: Text('${statusList[index].time}'),
                          leading: AdvancedAvatar(
                            foregroundDecoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Color(0xFF98FF98),width: 3),),
                            size: 45,
                            image: AssetImage('${statusList[index].url}'),
                          ),
                        );;
                      }
                  ),
                )
              ],
    );
  }
}