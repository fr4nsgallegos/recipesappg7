import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  Widget createContainer() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      margin: EdgeInsets.all(8),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("CABECERA 1"),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => createContainer(),
                itemCount: 200,
              ),
            ),
            ...List.generate(
              5,
              (index) => Padding(
                padding: EdgeInsets.all(10),
                child: Text("HIJO"),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => createContainer(),
                itemCount: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: Colors.white.withOpacity(1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                "PRESIONAR",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
