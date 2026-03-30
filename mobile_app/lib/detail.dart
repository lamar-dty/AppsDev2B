import 'dart:ui';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imagePath;
  final String tag;

  const DetailPage({
    super.key,
    required this.imagePath,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Stack(
          children: [
            // 🔥 BLUR BACKGROUND
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),

            // 🔥 HERO IMAGE CENTER
            Center(
              child: Hero(
                tag: tag,
                child: Material(
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}