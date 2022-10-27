import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                  List.generate(
                    18,
                    (index) => Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      color: Colors.primaries[index],
                      child: Text("$index"),
                    ),
                  )
                ,
              ),
            ),
            Expanded(
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  TextField(),
                  Text("Hola"),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Text("Hola"),
                  Container(
                    height: 300,
                    color: Colors.red,
                  ),
                  Text("Hola"),
                  Container(
                    height: 300,
                    color: Colors.blue,
                  ),
                  Text("Hola"),
                  Container(
                    height: 300,
                    color: Colors.red,
                  ),
                  Text("Hola"),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Text("Hola"),
                  Container(
                    height: 300,
                    color: Colors.red,
                  ),
                  Text("Hola"),
                  Container(
                    height: 300,
                    color: Colors.blue,
                  ),
                  Text("Hola"),
                  Container(
                    height: 300,
                    color: Colors.red,
                  ),
                  Text("Hola"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
