import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    // label: Row(
                    //   children: [
                    //     Icon(Icons.title),
                    //     Text("Título"),
                    //   ],
                    // ),
                    labelStyle: TextStyle(color: Colors.orange),
                    labelText: "Ingresa el título",
                    hintStyle: TextStyle(color: Colors.red),
                    hintText: "Sugerencia de nombre de receta",
                  ),
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: "Ingresa el preparación",
                //     hintText: "Sugerencia de preparación",
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
