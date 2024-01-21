import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  List<String> names = ["asdasdasd", "asdasdasd", "asdasdasdad", "asdasdasa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Column(
          children: [
            Text("HOLA ESTA ES MI LISTA"),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  // print(names[index]);
                  print(index);
                  return Container(
                    height: 200,
                    width: 400,
                    color: Colors.red,
                    margin: EdgeInsets.all(8),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
            )
          ],
        )
        // ListView(
        //   children: [
        //     ...List.generate(names.length, (index) => Text(names[index])),
        //     Container(
        //       height: 200,
        //       width: 500,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 500,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
        );
  }
}
