import 'package:flutter/material.dart';
class ListContacts extends StatelessWidget {
  const ListContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
            CircleContacts(image: "assets/images/img1.jpeg", text: "Alla",),
        
            CircleContacts(image: "assets/images/img2.jpeg",text: "July",),
        
            CircleContacts(image: "assets/images/img3.jpeg",text: "Mikle",),
        
            CircleContacts(image: "assets/images/img4.jpg",text: "Kler",),
        
            CircleContacts(image: "assets/images/img5.jpeg",text: "Moane",),
        
            CircleContacts(image: "assets/images/img6.jpeg",text: "Julie",),
        
            CircleContacts(image: "assets/images/img8.jpg",text: "Allen",),
        
            CircleContacts(image: "assets/images/img7.jpeg",text: "John",),
        ],
        
      ),
    );
  }
}

class CircleContacts extends StatelessWidget {
  final String image;
  final String text;
  const CircleContacts({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar( radius: 29,
            backgroundImage: Image.asset(image).image,
            ),
          ),
          SizedBox(height: 5,),
          Text(text, style: TextStyle(color: Colors.white, fontSize: 16),)
        ],
      ),
    );
  }
}