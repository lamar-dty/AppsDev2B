import 'package:flutter/material.dart';
import 'detail.dart';

class SearchPage extends StatelessWidget {
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
                PageRouteBuilder(
                  opaque: false,
                  barrierColor: Colors.black54,
                  transitionDuration: Duration(milliseconds: 400),
                  pageBuilder: (_, __, ___) => DetailPage(
                    imagePath: "assets/images/search.png",
                    tag: "searchHero",
                  ),
                ),
              );
            },
            child: Hero(
              tag: "searchHero",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/search.png",
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
              leading: Icon(Icons.search, color: Colors.black),
              title: Text(
                "Search Section",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Find content easily",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}