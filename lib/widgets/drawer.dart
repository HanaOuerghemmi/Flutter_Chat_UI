import 'package:chat_ui/widgets/list_contact.dart';
import 'package:flutter/material.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 275,
      backgroundColor: Colors.black38,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(40))
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xf71f1e1e),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Color(0x3d000000),
              spreadRadius: 30,
              blurRadius: 20,
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                    Setting(text: "Setting", icon: Icons.arrow_back_ios,),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: CircleContacts(
                            image: "assets/images/img3.jpeg", 
                            text: ""),
                        ),
                          SizedBox(width: 12,),
                          Text("Tom Bernan",
                           style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 35,),
                    Setting(text: "Account", icon: Icons.key),
                    Setting(text: "Chats", icon: Icons.chat_bubble),
                    Setting(text: "Notification", icon: Icons.notifications),
                    Setting(text: "Data and Storage", icon: Icons.storage),
                    Setting(text: "Help", icon: Icons.help),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    Setting(text: "Invite a freind", icon: Icons.people_outlined),
                   
                ],
              ),
               Setting(text: "Log Out", icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  final String text;
  final IconData icon;
  const Setting({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(icon,
            color: Colors.white,
            size: 20,
            ),
            SizedBox(width: 56,),
            Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),
            )
          ],
        ),
      ),
    );
  }
}