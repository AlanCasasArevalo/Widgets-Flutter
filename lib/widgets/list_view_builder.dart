import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const names = ["Darwin", "Lulu", "Pepe"];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (_, int index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black38,
                  height: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("${names[index].length}"),
              ),
              Expanded(
                child: Container(
                  color: Colors.black38,
                  height: 2,
                ),
              ),
            ],
          );
        },
        itemBuilder: (BuildContext context, int index) {
          print("🧨 $index");
          final nameModel = names[index];
          return Container(
            height: 100,
            margin: EdgeInsets.all(8),
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                Text("$nameModel y sus caracteres son ${nameModel.length}")
              ],
            ),
            alignment: Alignment.center,
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
