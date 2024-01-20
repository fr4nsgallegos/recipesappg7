import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  String urlImage;
  String title;
  String description;
  RecipePage({
    required this.urlImage,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff29304B),
      appBar: AppBar(
        backgroundColor: Color(0xff29304B),
        title: Text(title.toUpperCase()),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    urlImage,
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
