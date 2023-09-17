import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_learn_project/view/screen/newGroup.dart';

import '../screen/linkedDevices.dart';
import '../screen/newBroadCast.dart';
import '../screen/settings.dart';
import '../screen/starredMessage.dart';

class popupWidgetForAppBar extends StatefulWidget {
  String ? firstOption;
  String ? secOption;
  String ? thirdOption;
  String ? fourthOption;
  String ? fifthOption;

  popupWidgetForAppBar(this.firstOption, this.secOption, this.thirdOption,
      this.fourthOption, this.fifthOption);

  @override
  State<popupWidgetForAppBar> createState() => _popupWidgetState();
}

class _popupWidgetState extends State<popupWidgetForAppBar> {
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
        PopupMenuItem(child: Text('${this.widget.firstOption}'),value: '${this.widget.firstOption}',
          onTap: (){
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return newGroup();
                },
            ),
            );
          });
          }
  ,
  ),
          PopupMenuItem(child: Text('${this.widget.secOption}'), value: '${this.widget.secOption}',
              onTap: (){
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return newBroadcast();
                    },
                  ),
                  );
                });
              }),
          PopupMenuItem(child: Text('${this.widget.thirdOption}'), value: '${this.widget.thirdOption}',
              onTap: (){
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return linkedDevices();
                    },
                  ),
                  );
                });
              }),
          PopupMenuItem(child: Text('${this.widget.fourthOption}'),value: '${this.widget.fourthOption}',
              onTap: (){
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return starredMessages();
                    },
                  ),
                  );
                });
              }),
          PopupMenuItem(child: Text('${this.widget.fifthOption}'),value: '${this.widget.fifthOption}',
              onTap: (){
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return settings();
                    },
                  ),
                  );
                });
              }),

  ]

  ,

  );
}}