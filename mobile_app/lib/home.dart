import 'package:flutter/material.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
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
                    imagePath: "assets/images/test.png",
                    tag: "homeHero",
                  ),
                ),
              );
            },
            child: Hero(
              tag: "homeHero",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/test.png",
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text("Home Dashboard",
                  style: TextStyle(color: Colors.black)),
              subtitle: Text("Welcome to your home screen",
                  style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}