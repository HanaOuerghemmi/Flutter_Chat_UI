import 'dart:ffi';

import 'package:chat_ui/widgets/drawer.dart';
import 'package:chat_ui/widgets/list_contact.dart';
import 'package:chat_ui/widgets/list_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _globalKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: Color(0xFF171717),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _globalKey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                ListMenu(),
              ],
            ),

            // end of top page
            Positioned(
                top: 130,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(top: 15, left: 25, right: 25),
                  height: 220,
                  decoration: BoxDecoration(
                      color: Color(0xff27c1a9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "favorite contacts",
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      ListContacts(),
                    ],
                  ),
                )),
            //message part
            Positioned(
                top: 300,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xffeffffc),
                  ),
                  child: ListView(
                    children: [
                      //message
                      MessageRow(
                        image: "assets/images/img1.jpeg",
                        name: "Lora",
                        message: "Hello! How are you",
                        msgCount: 0,
                        ),
                        MessageRow(
                        image: "assets/images/img2.jpeg",
                        name: "Kayla",
                        message: "will you visit me",
                        msgCount: 1,
                        ),
                        MessageRow(
                        image: "assets/images/img8.jpg",
                        name: "Lauren",
                        message: "Are you with kayla again ??",
                        msgCount: 0,
                        ),
                        MessageRow(
                        image: "assets/images/img6.jpeg",
                        name: "Stive",
                        message: "I need money !!",
                        msgCount: 6,
                        ),
                        MessageRow(
                        image: "assets/images/img4.jpg",
                        name: "Helen",
                        message: "Hello y still here !!",
                        msgCount: 5,
                        ),
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xff27c1a9),
            child: Icon(Icons.edit_outlined, size: 30,),
            ),
        ),
        drawer: DrawerWidget(),
      ),
    );
  }
}

class MessageRow extends StatelessWidget {
  final String image, name, message;
  final int msgCount;

  const MessageRow({super.key, required this.image, required this.name, required this.message, required this.msgCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: CircleContacts(
                image: image,
                text: "Alla",
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 name,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  message,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 5),
          child: Column(
            children: [
              Text("16:35", style: TextStyle(fontSize: 10),),
             if(msgCount>0)
              CircleAvatar(
                radius: 7,
                backgroundColor: Color(0xff27c1a9),
                child: Text(msgCount.toString(), style: TextStyle(fontSize: 10, color: Colors.white),),
              ),
            ],
        
          ),
        )
      ],
    );
  }
}
