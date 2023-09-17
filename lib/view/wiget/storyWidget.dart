import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_viewer/story_viewer.dart';

class storyWidget extends StatefulWidget{
  String ? url;
  String ? userName;
  storyWidget(this.url,this.userName);

  @override
  State<storyWidget> createState() => _storyWidgetState();
}

class _storyWidgetState extends State<storyWidget> {
  double percent = 0.0;
  Timer ? _timer;
  void startTime(){
    _timer = Timer.periodic(Duration(microseconds: 6000), (timer) {
      setState(() {
        percent+=0.001;
        if(percent > 1){
          _timer?.cancel();
          Navigator.pop(context);
        }
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    startTime();
    super.initState();
  }
  OnTapDown(TapDownDetails details){
    setState(() {
      _timer?.cancel();
      Navigator.pop(context);
    });
  }
  Widget build(BuildContext context){
    return GestureDetector(
      onTapDown: (details) => OnTapDown(details),
      child: StoryViewer(
        backgroundColor: Colors.black,
        ratio: StoryRatio.r9_16,
        stories: [
          StoryItemModel(imageProvider: AssetImage('${widget.url}')),
        ],
        userModel: UserModel(username: '${widget.userName}',profilePicture: AssetImage('${widget.url}')),
      ),
    );
  }
}