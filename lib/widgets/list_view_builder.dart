import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: List.generate(
          1000,
          (index) {
            print("🧨 $index");
            return Container(
              height: 100,
              margin: EdgeInsets.all(8),
              color: Colors.green,
              child: FlutterLogo(),
              alignment: Alignment.center,
            );
          },
        ),
      ),
    );
  }
}
