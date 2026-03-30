import 'package:flutter/material.dart';
import 'detail.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailPage(
                    imagePath: "assets/images/profile.png",
                    tag: "profileHero",
                  ),
                ),
              );
            },
            child: Hero(
              tag: "profileHero",
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage("assets/images/profile.png"),
              ),
            ),
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Peter Parker",
                  style: TextStyle(color: Colors.black)),
              subtitle: Text("Profile Information",
                  style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}