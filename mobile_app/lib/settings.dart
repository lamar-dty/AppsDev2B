import 'package:flutter/material.dart';
import 'detail.dart';

class SettingsPage extends StatelessWidget {
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
                    imagePath: "assets/images/settings.png",
                    tag: "settingsHero",
                  ),
                ),
              );
            },
            child: Hero(
              tag: "settingsHero",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/settings.png",
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
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Settings Section",
                  style: TextStyle(color: Colors.black)),
              subtitle: Text("Customize how the app works for you",
                  style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}