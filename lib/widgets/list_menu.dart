import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: [
                  TextButton(onPressed: (){}, 
                  child: Text('Message', 
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 30)),
                   ),
                   SizedBox( width: 35,),
                    TextButton(onPressed: (){}, 
                  child: Text('Online', 
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 30)),
                   ),
                   SizedBox( width: 35,),
                    TextButton(onPressed: (){}, 
                  child: Text('Groups', 
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 30)),
                   ),
                   SizedBox( width: 35,),
                    TextButton(onPressed: (){}, 
                  child: Text('More', 
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 30)),
                   ),
                   SizedBox( width: 35,),
                ],
              ));
  }
}