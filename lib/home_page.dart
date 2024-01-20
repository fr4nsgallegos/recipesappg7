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
                    hintMaxLines: 2,
                    hintText: "Sugerencia de nombre de receta",
                    icon: Icon(Icons.title_outlined),
                    prefixIcon: Icon(Icons.people),
                    // prefixText: "hola: ",
                    // prefix: Container(
                    //   height: 10,
                    //   width: 20,
                    //   color: Colors.red,
                    // ),
                    // suffix: Container(
                    //   width: 30,
                    //   height: 10,
                    //   color: Colors.cyan,
                    // ),
                    suffixIcon: Icon(Icons.delete),
                    // suffixText: "sffixxx",
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
