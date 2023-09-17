import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp_learn_project/model/chatModel.dart';

import '../../lists/chatList.dart';

class myProfile extends StatefulWidget{
  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  String name = 'Your Name';
  String about = 'Write quote';
  String phone = '+20';
  var firstField = TextEditingController();
  var secField = TextEditingController();
  var thirdField = TextEditingController();
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: ListTile(
              title : Text('My profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            backgroundColor: Color(0xFF075E54)
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: AdvancedAvatar(
                  size: 200,
                  image : AssetImage('images/photo12.jfif'),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              ListTile(
                  title: Text('${name}',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Container(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 80,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide:BorderSide(color: Color(0xFF075E54), width: 2.0),
                            ),
                          ),
                            controller: firstField,
                          onChanged: (value){
                            setState(() {
                              name = value;
                            });
                          },
                          onFieldSubmitted:(value){
                            setState(() {
                              firstField.text = '';
                            });
                          },

                        ),
                      ),
                    ),
                  ),
                  leading: Icon(Icons.person,size: 30,),
                trailing:  Icon(Icons.edit),

        ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  title: Text('${about}',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Container(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 80,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide:BorderSide(color: Color(0xFF075E54), width: 2.0),
                            ),
                          ),
                          controller: secField,
                          onChanged: (value){
                            setState(() {
                              about = value;
                            });
                          },
                          onFieldSubmitted:(value){
                            setState(() {
                              secField.text = '';
                            });
                          },

                        ),
                      ),
                    ),
                  ),
                  leading: Icon(Icons.info_outline,size: 30,),
                  trailing:  Icon(Icons.edit),

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  title: Text('${phone}',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Container(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 80,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide:BorderSide(color: Color(0xFF075E54), width: 2.0),
                            ),
                          ),
                          controller: thirdField,
                          onChanged: (value){
                            setState(() {
                              phone = value;
                            });
                          },
                          onFieldSubmitted:(value){
                            setState(() {
                              thirdField.text = '';
                            });
                          },

                        ),
                      ),
                    ),
                  ),
                  leading: Icon(Icons.phone,size: 30,),
                  trailing:  Icon(Icons.edit),

                ),
              ),
            ],
          ),
        )
    );
  }
}