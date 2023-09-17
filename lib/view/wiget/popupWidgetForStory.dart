import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_learn_project/view/screen/newGroup.dart';

import '../screen/linkedDevices.dart';
import '../screen/newBroadCast.dart';
import '../screen/settings.dart';
import '../screen/starredMessage.dart';
import '../screen/viewMyStory.dart';

class popupWidgetForStories extends StatefulWidget {
  String ? firstOption;

  popupWidgetForStories(this.firstOption);

  @override
  State<popupWidgetForStories> createState() => _popupWidgetState();
}

class _popupWidgetState extends State<popupWidgetForStories> {
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(child: Text('${this.widget.firstOption}'),value: '${this.widget.firstOption}',
          onTap: (){
            WidgetsBinding.instance!.addPostFrameCallback((_) {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return viewMyStory();
                },
              ),
              );
            });
          }
          ,
        ),
      ]

      ,

    );
  }}